package spring.model.grumy;

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
	public String create(MemberDTO dto, Model model, HttpServletRequest request) {
		String url = "/main";
		
		if (dao.duplicateId(dto.getId()) == 1) {
			model.addAttribute("str", "중복된 아이디 입니다. 아이디 중복을 확인하세요");
			
		}else{

			if (dao.create(dto) == 1) {
				url = "redirect:/";
			} else {
				url = "error";
			}

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
	
	@PostMapping("/member/login")
	public String login(Model model, @RequestParam Map<String, String> map, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) {
		int flag = dao.loginCheck(map);

		if (flag == 1) {
			String grade = dao.getGrade(map.get("id"));
			session.setAttribute("id", map.get("id"));
			session.setAttribute("grade", grade);


		
		} else {
			model.addAttribute("msg", "failure");
			return "/login";
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/member/login")
	public String login(HttpServletRequest request) {


		return "/login";
	}
	
	@PostMapping("/member/findpw")
	public String findpw(String name, String id, Model model) {
		Map map = new HashMap();
		map.put("name", name);
		map.put("id", id);

		String passwd = dao.findpw(map);

		model.addAttribute("passwd", passwd);

		return "/findpwproc";
	}

	@GetMapping("/member/findpw")
	public String findpw() {

		return "/findpw";
	}

	@PostMapping("/member/findid")
	public String findid(String name, String email, Model model) {
		Map map = new HashMap();
		map.put("name", name);
		map.put("email", email);

		String id = dao.findid(map);

		model.addAttribute("id", id);

		return "/findidproc";
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
	
	@PostMapping("member/updatePw")
	public String updatePw(MemberDTO dto, Model model) {
		Map map = new HashMap();
		map.put("id", dto.getId());
		map.put("passwd", dto.getPasswd());

		dao.updatePasswd(map);

		model.addAttribute("id", dto.getId());

		return "redirect:/member/read";
	}

	@GetMapping("member/updatePw")
	public String updatePw() {

		return "/updatePw";
	}
	
	@PostMapping("member/delete")
	public String delete(String id,HttpServletRequest request, HttpSession session) {
		
		int flag = dao.delete(id);

		if (flag == 1) {
			session.invalidate();
			return "redirect:/";
		} else {
			return "error";
		}
	}

	@GetMapping("/member/delete")
	public String delete() {

		return "/delete";
	}

	@PostMapping("/member/update")
	public String update(MemberDTO dto, Model model) {
		int flag = dao.update(dto);
		
		if (flag == 1) {

			model.addAttribute("id", dto.getId());
			
			return "redirect:/member/read";
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

	@RequestMapping("/member/read")
	public String read(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		
		MemberDTO dto = dao.read(id);

		model.addAttribute("dto", dto);

		return "/read";
	}

	@RequestMapping("/admin/list")
	public String list(HttpServletRequest request) {
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));

		if (col.equals("total"))
			word = "";

		int nowPage = 1;
		int recordPerpage = 3;

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

}
