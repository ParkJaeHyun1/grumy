package spring.model.grumy;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.CartMapper;


@Controller
public class CartController {
	@Autowired
	private CartMapper mapper;
	
	@RequestMapping("/cart/list")
	public String list(HttpServletRequest request) {
		
		return "/cart/list";
	}
}
