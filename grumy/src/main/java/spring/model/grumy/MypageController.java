package spring.model.grumy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	
	@GetMapping("/mypage/index")
	public String index() {
		return "/mypage/index";
	}
	
	@GetMapping("/mypage/orderlist")
	public String orderlist() {
		return "/mypage/orderlist";
	}

}
