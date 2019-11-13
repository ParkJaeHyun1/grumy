package spring.model.grumy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import spring.model.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper dao;
	
	@PostMapping("/member/create")
	public String create() {
		
		return "/create";
	}
	

}
