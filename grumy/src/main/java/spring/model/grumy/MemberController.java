package spring.model.grumy;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
		System.out.println(dto);
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

}
