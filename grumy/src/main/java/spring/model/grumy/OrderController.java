package spring.model.grumy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

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
	itemMapper itemMapper;
	@Autowired
	MemberMapper memberMapper;
	
	@RequestMapping("/order/order")			//itemOptionNo,count,cartNo
	public String list(HttpServletRequest request, HttpSession session, String[] orderInfoList,String url) {

		int totalPrice = 0,deliveryCharge=0;
		ArrayList<Integer> itemOptionNoList = new ArrayList<Integer>();
		Map<String, String> map = new HashMap<String, String>();
		
		for(String str:orderInfoList) 
			map.put(str.split("/")[0], str);
				
		for(String orderInfo:orderInfoList) 
			itemOptionNoList.add(Integer.parseInt(orderInfo.split("/")[0]));

		MemberDTO member = memberMapper.read((String)session.getAttribute("id"));
		member.divideInfo();
		ArrayList<OrderItemDTO> orderItemList = itemMapper.itemOptionList(itemOptionNoList);
		
		for(OrderItemDTO dto:orderItemList) {
			String[] orderInfo = map.get(dto.getItemOptionNo()+"").split("/");
			dto.setCount(Integer.parseInt(orderInfo[1]));
			totalPrice += (dto.getItemPrice() - dto.getItemSalePrice());
			if(orderInfo.length>2)
				dto.setCartNo(Integer.parseInt(orderInfo[2]));
		}
		if(totalPrice<50000)
			deliveryCharge = 2500;
		
		request.setAttribute("url", url);
		request.setAttribute("member", member);
		request.setAttribute("list", orderItemList);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("deliveryCharge",deliveryCharge);
		return "/order/order";
	}
	
	@RequestMapping("/order/insert")			//itemOptionNo,count,cartNo
	public String insert(HttpServletRequest request, HttpSession session) {

	
		return "/order/insert";
	}
}
