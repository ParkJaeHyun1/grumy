package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import spring.model.mapper.MypageMapper;
import spring.model.member.MemberDTO;
import spring.model.order.OrderItemDTO;

@Controller
public class MypageController {
	@Autowired
	MypageMapper mapper;
	
	@GetMapping("/mypage/index")
	public String index(HttpServletRequest request, HttpSession session) {
		String id = (String)session.getAttribute("id");
		MemberDTO dto = mapper.read(id);
		ArrayList<OrderItemDTO> itemList = mapper.orderCount(id);
		Map map = new HashMap();
		
		for(OrderItemDTO item: itemList) { 
			map.put(item.getState(), item.getCount());
			
			System.out.println(item.getState() + item.getCount());
		}
		
		
		
		request.setAttribute("map", map);
		request.setAttribute("dto", dto);
		return "/mypage/index";
	}
	
	@GetMapping("/mypage/orderlist")
	public String orderlist(HttpServletRequest request, HttpSession session) {
		String id = (String)session.getAttribute("id");
		MemberDTO dto = mapper.read(id);
		
		request.setAttribute("dto", dto);
		
		return "/mypage/orderlist";
	}

}
