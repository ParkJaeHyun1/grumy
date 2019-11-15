package spring.model.grumy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.cart.CartDTO;
import spring.model.item.ItemDTO;
import spring.model.mapper.CartMapper;


@Controller
public class CartController {
	@Autowired
	private CartMapper mapper;
	
	@RequestMapping("/cart/list")
	public String list(HttpServletRequest request, HttpSession session) {
		//String userID = (String)session.getAttribute("id");
		String userID = "tester"; 
		ArrayList<CartDTO> list = mapper.list(userID);
		request.setAttribute("list",list);
		return "/cart/list";
	}
}
