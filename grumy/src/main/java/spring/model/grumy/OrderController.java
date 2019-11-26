package spring.model.grumy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.itemMapper;
import spring.model.order.OrderItemDTO;

@Controller
public class OrderController {
	@Autowired
	itemMapper itemMapper;
	
	@RequestMapping("/order/order")			//itemOptionNo,count,cartNo
	public String list(HttpServletRequest request, HttpSession session, String[] orderInfoList) {

		ArrayList<OrderItemDTO> list = new ArrayList<OrderItemDTO>();
		for(String orderInfo:orderInfoList) {
			String[] s = orderInfo.split("/");
			OrderItemDTO dto = new OrderItemDTO();
			dto.setItemOptionNo(Integer.parseInt(s[0]));
			dto.setCount(Integer.parseInt(s[1]));
			if(s.length>2)
				dto.setCartNo(Integer.parseInt(s[2]));
			list.add(dto);
		}
		return "/order/order";
	}
}
 