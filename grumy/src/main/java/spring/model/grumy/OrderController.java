package spring.model.grumy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.MemberMapper;
import spring.model.mapper.OrderMapper;
import spring.model.mapper.itemMapper;
import spring.model.member.MemberDTO;
import spring.model.order.OrderItemDTO;

@Controller
public class OrderController {
	@Autowired
	OrderMapper orderMapper;
	@Autowired
	MemberMapper memberMapper;
	
	@RequestMapping("/order/order")			//itemOptionNo,count,cartNo
	public String list(HttpServletRequest request, HttpSession session, String[] orderInfoList) {

		int totalPrice = 0,deliveryCharge=0;
		ArrayList<Integer> itemOptionNoList = new ArrayList<Integer>();
		
		for(String str:orderInfoList)
			

		
		for(String orderInfo:orderInfoList) 
			itemOptionNoList.add(Integer.parseInt(orderInfo.split("/")[0]));

		MemberDTO member = memberMapper.read((String)session.getAttribute("id"));
		member.divideInfo();
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
		
		request.setAttribute("member", member);
		request.setAttribute("list", orderItemList);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("deliveryCharge",deliveryCharge);
		return "/order/order";
	}
}
