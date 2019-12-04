package spring.model.grumy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.OrderMapper;
import spring.model.mapper.itemMapper;
import spring.model.order.OrderItemDTO;

@Controller
public class OrderController {
	@Autowired
	OrderMapper orderMapper;

	@RequestMapping("/order/order")			//itemOptionNo,count,cartNo
	public String list(HttpServletRequest request, HttpSession session, String[] orderInfoList) {

		int totalPrice = 0,deliveryCharge=0;
		ArrayList<Integer> itemOptionNoList = new ArrayList<Integer>();
		
		for(String orderInfo:orderInfoList) 
			itemOptionNoList.add(Integer.parseInt(orderInfo.split("/")[0]));

		ArrayList<OrderItemDTO> orderItemList = orderMapper.itemOptionList(itemOptionNoList);
		
		for(int i=0;i<orderInfoList.length;i++) {
			String[] s = orderInfoList[i].split("/");
			OrderItemDTO dto = orderItemList.get(i);
			dto.setCount(Integer.parseInt(s[1]));
			totalPrice += (dto.getItemPrice() - dto.getItemSalePrice());
			if(s.length>2)
				dto.setCartNo(Integer.parseInt(s[2]));
		}
		if(totalPrice<50000)
			deliveryCharge = 2500;
		
		request.setAttribute("list", orderItemList);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("deliveryCharge",deliveryCharge);
		return "/order/order";
	}
}
