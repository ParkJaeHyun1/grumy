package spring.model.grumy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;

import spring.model.mapper.MemberMapper;
import spring.model.member.Coolsms;
import spring.model.member.MemberDTO;
import spring.model.member.NaverLoginBO;
import spring.model.utility.Utility;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper dao;

	@Autowired
	private JavaMailSender mailSender;

	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
 
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@GetMapping("/member/create")
	public String create() {

		return "/create";
	}

	@PostMapping("/member/create")
	public String create(MemberDTO dto, Model model) {

		String url = "/main";

		if (dao.create(dto) == 1) {
			url = "redirect:/";
		} else {
			url = "error";
		}

		return url;
	}// end createproc

	@ResponseBody
	@GetMapping(value = "/member/idcheck", produces = "application/json;charset=utf-8")
	public Map<String, Object> idcheck(String id) {

		int flag = dao.duplicateId(id);
		Map<String, Object> map = new HashMap<String, Object>();

		if (flag == 1) {
			map.put("str", id + "는 중복되어 사용할 수 없습니다.");
		} else {
			if(id.length()==0)
				map.put("str", "아이디를 입력해주세요.");
			else if(id.length()<8||id.length()>17)
				map.put("str", "아이디를 8자 이상 16자 이하 입력해주세요");
			else
				map.put("str", id + "는 사용가능 합니다.");
		}
		return map;
	}// end idcheck
	

	
	@ResponseBody
	@GetMapping(value = "/member/emailcheck", produces = "application/json;charset=utf-8")
	public Map<String, Object> emailcheck(String email) {


		int flag = dao.duplicateEmail(email);
		Map<String, Object> map = new HashMap<String, Object>();

		if (flag == 1) {
			map.put("str", email + "는 중복되어 사용할 수 없습니다.");
		} else {
			map.put("str", email + "는 사용가능 합니다.");
		}
		return map;
	}

	@RequestMapping("/member/loginProc")
	public String login(Model model, @RequestParam Map<String, String> map, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "url", required = false) String url) throws Exception {
		int flag = dao.loginCheck(map);
		

		if (flag == 1) {
			String grade = dao.getGrade(map.get("id"));
			session.setAttribute("id", map.get("id"));
			session.setAttribute("grade", grade);
		

		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디or패스워드가 잘못되었습니다.'); " + "history.go(-1);</script>");
			out.flush();
			return "/login";
		}
		if (url == null || url.equals(""))
			return "redirect:/";
		
		return "redirect:" + url;
	}

	@RequestMapping("/member/login")
	public String login(HttpSession session, Model model, HttpServletRequest request,
			@RequestParam(value = "url", required = false) String url) {
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			
		model.addAttribute("nurl", naverAuthUrl);

		request.setAttribute("url", url);
		
		return "/login";
	}// 로그인 요청 메소드
	

	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		// 1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); // String형식의 json데이터
		/**
		 * apiResult json 구조 {"resultcode":"00", "message":"success",
		 * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
		 **/
		// 2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		// response의 nickname값 파싱
		String nickname = (String) response_obj.get("nickname");
		System.out.println(nickname);
		// 4.파싱 닉네임 세션으로 저장
		session.setAttribute("sessionId", nickname); // 세션 생성
		model.addAttribute("result", apiResult);
		
		return "/login";
	}

	@PostMapping("/member/findpw")
	public String findpw(HttpServletRequest request, HttpServletResponse response, String name, String id, String phone,
			String email, Model model) throws Exception {

		Map map = new HashMap();
		map.put("name", name);
		map.put("id", id);
		map.put("email", email);
		map.put("phone", phone);

		String passwd = dao.findpw(map);
		String email1 = dao.findemail(id);
		String phone1 = dao.findphone(id);
		String id1 = dao.findid(map);

		if (passwd != null) {

			model.addAttribute("passwd", passwd);
			model.addAttribute("email", email1);
			model.addAttribute("phone", phone1);
			model.addAttribute("id", id1);

			return "/findpwproc";

		} else {

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 정보가 올바르지 않습니다.'); " + "history.go(-1);</script>");
			out.flush();
			return "/findpw";
		}
	}

	@GetMapping("/member/findpw")
	public String findpw() {

		return "/findpw";
	}

	@PostMapping("/member/findid")
	public String findid(HttpServletRequest request, HttpServletResponse response, String name, String email,
			String phone, Model model) throws Exception {
		Map map = new HashMap();
		map.put("name", name);
		map.put("email", email);
		map.put("phone", phone);

		String id = dao.findid(map);

		if (id != null) {

			model.addAttribute("id", id);

			return "/findidproc";

		} else {

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('요청하신 정보로 가입하신 아이디가 존재하지 않습니다.');</script>");
			out.flush();

			return "/findid";
		}

	}

	@GetMapping("/member/findid")
	public String findid() {

		return "/findid";
	}

	@GetMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";

	}

	@PostMapping("/member/delete")
	public String delete(String id, String delpasswd, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {

		Map map = new HashMap();
		map.put("id", id);
		map.put("passwd", delpasswd);

		int flag = dao.delete(map);

		if (flag == 1) {
			session.invalidate();
			return "/home";
		} else {
			return "error";
		}

	}

	@GetMapping("/member/delete")
	public String delete() {

		return "/delete";
	}

	@PostMapping("/member/update")
	public String update(HttpServletRequest request, HttpServletResponse response, MemberDTO dto, Model model)
			throws Exception {
		int flag = dao.update(dto);

		if (flag == 1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정보수정을 완료하였습니다.'); " + "history.go(-1);</script>");
			out.flush();
			return "/home";
		} else {

			return "error";
		}

	}
	@PostMapping("/member/adminupdate")
	public String adminupdate(MemberDTO dto) {
		int flag = dao.adminupdate(dto);
		
		if (flag == 1) {

			return "redirect:/member/list";
		} else {
			
			return "error";
		}
		
	}

	@GetMapping("/member/update")
	public String update(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");

		MemberDTO dto = dao.read(id);

		model.addAttribute("dto", dto);

		return "/update";
	}

	@RequestMapping("/member/list")
	public String list(MemberDTO dto, HttpServletRequest request) {
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));

		if (col.equals("total"))
			word = "";

		int nowPage = 1;
		int recordPerpage = 5;

		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int sno = ((nowPage - 1) * recordPerpage) + 1;
		int eno = nowPage * recordPerpage;

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);

		List<MemberDTO> list = dao.list(map);

		int total = dao.total(map);
		String paging = Utility.paging(total, nowPage, recordPerpage, col, word);

		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);

		return "/list";
	}

	@RequestMapping("/member/read")
	public String read(String id, Model model) {

		MemberDTO dto = dao.read(id);

		model.addAttribute("dto", dto);

		return "/read";
	}

	@RequestMapping(value = "/member/sendmail")
	public String sendmail(HttpServletRequest request, HttpServletResponse response) {

		String from = "kevinahn861125@gmail.com";
		String to = request.getParameter("email");
		String title = request.getParameter("id") + "님이 요청하신 비밀번호입니다.";
		String content = request.getParameter("id") + "님이 요청하신 비밀번호는 " + request.getParameter("passwd") + "입니다.";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(from);
			messageHelper.setTo(to);
			messageHelper.setSubject(title);
			messageHelper.setText(content);

			mailSender.send(message);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('성공적으로 메일을 발송했습니다.');history.go(-1);</script>");
			out.flush();

		} catch (Exception e) {
			System.out.println(e);
		}

		return "/login";
	}
	
	@RequestMapping(value="/member/sendsms")
	public String sendsms(HttpServletRequest request)throws Exception {
		 String api_key = "NCS6BLVQHLCKDCZG"; 
         String api_secret = "PAMLNBACSRKGWC862RET7RSLX9UGUKHA";  

         Coolsms coolsms = new Coolsms(api_key, api_secret);
            
         HashMap<String, String> set = new HashMap<String, String>();
         set.put("to", "01057165993"); 

         set.put("from", (String)request.getParameter("phone")); 
         set.put("text", (String)request.getParameter("passwd")); 
         set.put("type", "sms"); // 문자 타입

         System.out.println(set);

         JSONObject result = coolsms.send(set); 

         if ((boolean)result.get("status") == true) {

        
           System.out.println("성공");
           System.out.println(result.get("group_id"));
           System.out.println(result.get("result_code"));
           System.out.println(result.get("result_message")); 
           System.out.println(result.get("success_count"));           
           System.out.println(result.get("error_count")); 
         } else {

           // 메시지 보내기 실패
           System.out.println("실패");
           System.out.println(result.get("code"));
           System.out.println(result.get("message"));
         }

         return "/login";
       }

	
	
}
