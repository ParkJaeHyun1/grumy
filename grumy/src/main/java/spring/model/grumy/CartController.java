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
		int totalPrice=0;
		String id = (String)session.getAttribute("id");
		ArrayList<CartDTO> list = mapper.list(id);
		
		for(CartDTO dto: list )
			totalPrice += ((dto.getItemPrice()-dto.getItemSalePrice())*dto.getCount());
		request.setAttribute("totalPrice",totalPrice);
		request.setAttribute("list",list);
		request.setAttribute("test","aaaa");
		return "/cart/list";
	}
}
