package spring.model.grumy;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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

	@PostMapping("/member/preproc")
	public String createpreproc(MemberDTO dto, Model model, HttpServletRequest request) {
		String url = "/preproc";

		if (dao.duplicateId(dto.getID()) == 1) {
			model.addAttribute("str", "중복된 아이디 입니다. 아이디 중복을 확인하세요");
		}else{

			if (dao.create(dto) == 1) {
				url = "redirect:/";
			} else {
				url = "error";
			}

		}

		return url;
	}

}
