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
import spring.model.order.OrderItemDTO;

@Controller
public class OrderController {
	@Autowired
	OrderMapper orderMapper;
	@Autowired
	MemberMapper memberMapper;
	
	@RequestMapping("/order/order")			//itemOptionNo,count,cartNo
	public String list(HttpServletRequest request, HttpSession session, String[] orderInfoList) {
		System.out.println(orderInfoList.length);
		int totalPrice = 0,deliveryCharge=0;
		ArrayList<Integer> itemOptionNoList = new ArrayList<Integer>();
		
		Arrays.sort(orderInfoList, new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				
				return o1.split("/")[0].compareTo( o2.split("/")[0]);
			}
		});
		
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
			System.out.println(dto.toString());
		}
		if(totalPrice<50000)
			deliveryCharge = 0;
		
		request.setAttribute("list", orderItemList);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("deliveryCharge",deliveryCharge);
		return "/order/order";
	}
}
