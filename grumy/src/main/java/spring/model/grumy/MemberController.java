package spring.model.grumy;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.mapper.MemberMapper;
import spring.model.member.MemberDTO;

@Controller
public class MemberController {


	@Autowired
	private MemberMapper dao;

	@GetMapping("/member/create")
	public String create() {
		
		return "/create";
	}

	@PostMapping("/member/createproc")
	public String createproc(MemberDTO dto, Model model, HttpServletRequest request) {
		String url = "/preproc";
		
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

			Cookie cookie = null;

			String c_id = request.getParameter("c_id");

			if (c_id != null) {
				cookie = new Cookie("c_id", "Y");
				cookie.setMaxAge(120);
				response.addCookie(cookie);

				cookie = new Cookie("c_id_val", map.get("id"));
				cookie.setMaxAge(120);
				response.addCookie(cookie);
			} else {
				cookie = new Cookie("c_id", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);

				cookie = new Cookie("c_id_val", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}

			if (map.get("rurl") != null && !map.get("rurl").equals("")) {
				model.addAttribute("bbsno", map.get("bbsno"));
				model.addAttribute("nPage", map.get("nPage"));
				model.addAttribute("nowPage", map.get("nowPage"));
				model.addAttribute("col", map.get("col"));
				model.addAttribute("word", map.get("word"));

				return "redirect:" + map.get("rurl");
			} else {
				return "redirect:/";
			}
		} else {
			request.setAttribute("str", "아이디 또는 비밀번호를 잘못 입력하셨거나 <br>회원이 아닙니다. 회원가입 하세요.");
			return "/preproc";
		}

	}

	@GetMapping("/member/login")
	public String login(HttpServletRequest request) {
		String c_id = "";
		String c_id_val = "";

		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];

				if (cookie.getName().equals("c_id")) {
					c_id = cookie.getValue();
				} else if (cookie.getName().equals("c_id_val")) {
					c_id_val = cookie.getValue();
				}
			}
		}
		request.setAttribute("c_id", c_id);
		request.setAttribute("c_id_val", c_id_val);

		return "/login";
	}

}
