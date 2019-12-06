package spring.model.grumy;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.mapper.MemberMapper;
import spring.model.member.MemberDTO;
import spring.model.utility.Utility;

@Controller
public class MemberController {


	@Autowired
	private MemberMapper dao;
	


	@GetMapping("/member/create")
	public String create() {
		
		return "/create";
	} 

	@PostMapping("/member/create")
	public String create(MemberDTO dto, Model model){
		String url = "/main";
		
		if (dao.create(dto) == 1) {

			url = "redirect:/";
		} else {
			url = "error";
		} 

		return url;
	}//end createproc
	
	@ResponseBody
	@GetMapping(value = "/member/idcheck", produces = "application/json;charset=utf-8")
	public Map<String, Object> idcheck(String id) {

		int flag = dao.duplicateId(id);
		Map<String, Object> map = new HashMap<String, Object>();

		if (flag == 1) {
			map.put("str", id + "는 중복되어 사용할 수 없습니다.");
		} else {
			map.put("str", id + "는 사용가능 합니다.");
		}
		return map;
	}//end idcheck
	
	@RequestMapping("/member/loginProc")
	public String login(Model model, @RequestParam Map<String, String> map, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,@RequestParam(value="url",required=false) String url) throws Exception{
		int flag = dao.loginCheck(map);

		if (flag == 1) {
			String grade = dao.getGrade(map.get("id"));
			session.setAttribute("id", map.get("id"));
			session.setAttribute("grade", grade);

		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디or패스워드가 잘못되었습니다.'); "
					+ "history.go(-1);</script>");
			out.flush();
			return "/login";
		}
		if(url == null || url.equals(""))
			return "redirect:/";
		return"redirect:"+url;
	}
	
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request,@RequestParam(value="url",required=false) String url) {
		request.setAttribute("url", url);
		return "/login";
	}
	
	@PostMapping("/member/findpw")
	public String findpw(HttpServletRequest request, HttpServletResponse response,
			String name, String id, String phone, String email, Model model
			)throws Exception {
		
		Map map = new HashMap();
		map.put("name", name);
		map.put("id", id);
		map.put("email",email);
		map.put("phone", phone);

		String passwd = dao.findpw(map);
		String email1 = dao.findemail(id);
		int phone1 = dao.findphone(id);

		if(passwd!=null) {
			
			model.addAttribute("passwd", passwd);
			model.addAttribute("email1", email1);
			model.addAttribute("phone1", phone1);
			

			return "/findpwproc";
			
		}else {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 정보가 올바르지 않습니다.'); "
					+ "history.go(-1);</script>");
			out.flush();
			return "/findpw";
		}
	}

	@GetMapping("/member/findpw")
	public String findpw() {

		return "/findpw";
	} 

	@PostMapping("/member/findid")
	public String findid(HttpServletRequest request, HttpServletResponse response,
String name, String email, String phone, Model model) throws Exception{
		Map map = new HashMap();
		map.put("name", name);
		map.put("email", email);
		map.put("phone", phone);

		String id = dao.findid(map);
		
		if(id!=null) {
			
			model.addAttribute("id", id);

			return "/findidproc";
		
		}else{
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('요청하신 정보로 가입하신 아이디가 존재하지 않습니다.'); "
					+ "history.go(-1);</script>");
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
	

	
	@PostMapping("member/delete")
	public String delete(String id,String delpasswd,HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception {
		
		Map map = new HashMap();
		map.put("id",id);
		map.put("passwd",delpasswd);
		
		
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
	public String update(HttpServletRequest request, HttpServletResponse response,MemberDTO dto, Model model)throws Exception {
		int flag = dao.update(dto);
		
		if (flag == 1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정보수정을 완료하였습니다.'); "
					+ "history.go(-1);</script>");
			out.flush();
			return "/home";
		} else {
			
			return "error";
		}

	}

	@GetMapping("/member/update")
	public String update(Model model,HttpSession session) {
		String id = (String)session.getAttribute("id");
		
		MemberDTO dto = dao.read(id);
		
		model.addAttribute("dto", dto);
		
		
		return "/update";
	}

	@RequestMapping("/member/list")
	public String list(MemberDTO dto,HttpServletRequest request) {
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		
		
		if(col.equals("total"))
			word = "";
		
		int nowPage = 1;
		int recordPerpage = 5;
		
		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		int sno = ((nowPage-1)*recordPerpage) + 1;
		int eno = nowPage*recordPerpage;
		
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
	public String read(String id,Model model) {
		
		MemberDTO dto = dao.read(id);
		
		model.addAttribute("dto",dto);
		
		return "/read";
	}

	

}
