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
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.board.BoardDTO;
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
		Map map = new HashMap();
		
		for(OrderItemDTO item: itemList) { 
			map.put(item.getState(), item.getCount());
		}
		
		
		request.setAttribute("map", map);
		request.setAttribute("dto", dto);
		return "/mypage/index";
	}
	
	@RequestMapping("/mypage/mylist")
	public String mylist(HttpServletRequest request, HttpSession session) {
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
		
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		 
		
		
		List<BoardDTO> list = mapper.mylist(map); 

				
		int total = mapper.mytotal(map);
		

		
		String paging = Utility.mypaging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("total", total);
		request.setAttribute("dto", dto);
		return "/mypage/mylist";
	}
	
	@RequestMapping("/mypage/orderlist/list")
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
		map.put("sno", sno);
		map.put("eno", eno);
		map.put("state", state);
		
	
		List<OrderDTO> list = mapper.orderlist(map);
		
		
		
		int total = mapper.ordertotal(map);
		
		String paging = Utility.paging1(total, nowPage, recordPerPage, state);
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("total", total);
		return "/mypage/orderlist/list";
	}

}
