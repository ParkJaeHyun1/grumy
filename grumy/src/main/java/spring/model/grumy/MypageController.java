package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import spring.model.mapper.MypageMapper;
import spring.model.member.MemberDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;
import spring.model.utility.Utility;

@Controller
public class MypageController {
	@Autowired
	MypageMapper mapper;
	
	@GetMapping("/mypage/index")
	public String index(HttpServletRequest request, HttpSession session) {
		String id = (String)session.getAttribute("id");
		MemberDTO dto = mapper.read(id);
		ArrayList<OrderItemDTO> itemList = mapper.orderCount(id);
		ArrayList<OrderItemDTO> itemList2 = mapper.orderCount2(id);
		Map map = new HashMap();
		
		for(OrderItemDTO item: itemList) { 
			map.put(item.getState(), item.getCount());
		}
		
		Map map2 = new HashMap();
		for(OrderItemDTO item2: itemList) { 
			map2.put(item2.getState2(), item2.getCount());
		}
		
		
		
		request.setAttribute("map", map);
		request.setAttribute("map2", map2);
		request.setAttribute("dto", dto);
		return "/mypage/index";
	}
	
	@GetMapping("/mypage/orderlist")
	public String orderlist(HttpServletRequest request, HttpSession session) {
		String id = (String)session.getAttribute("id");
		MemberDTO dto = mapper.read(id);
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));

		
		//페이징 관련
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} 
		
		int recordPerPage = 10; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;
		String state = request.getParameter("state");
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("state", state);
		map.put("sno", sno);
		map.put("eno", eno);
		List<OrderDTO> list = mapper.list(map);
		

		int total = mapper.total(map);
		
		String paging = Utility.paging1(total, nowPage, recordPerPage, state);
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("nowPage", nowPage);
		return "/mypage/orderlist";
	}

}
