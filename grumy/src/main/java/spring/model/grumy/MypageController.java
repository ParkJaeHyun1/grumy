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
import spring.model.review.reviewDTO;
import spring.model.utility.Utility;

@Controller
public class MypageController {
	@Autowired
	MypageMapper mapper;
	
	@RequestMapping("/mypage/cslist/list")
	public String cslist(HttpServletRequest request, HttpSession session) {
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
		String state = "cs";
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("sno", sno);
		map.put("eno", eno);
		
		
	
		List<OrderDTO> list = mapper.cslist(map);
		
		
		int total = mapper.ordertotal(map);
		int cstotal = mapper.cstotal(map);
		
		
		String paging = Utility.paging1(cstotal, nowPage, recordPerPage,state);
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("total", total);
		request.setAttribute("cstotal", cstotal);
		
		return "/mypage/cslist/list";
	}
	
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
		String wordr = Utility.checkNull(request.getParameter("wordr"));
		String colr = Utility.checkNull(request.getParameter("colr"));

		
		//페이징 관련
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} 
		
		int nowPager = 1;
		if(request.getParameter("nowPager")!= null){
			nowPager = Integer.parseInt(request.getParameter("nowPager"));
		} 
		
		int recordPerPage = 10; //한페이지당 보여줄 레코드 갯수
		int recordPerPager = 5; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;
		
		int snor = ((nowPager-1) * recordPerPager) + 1 ;
		int enor= nowPager * recordPerPager;
		
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("snor",snor);
		map.put("enor",enor);
		 
		
		
		List<BoardDTO> list = mapper.mylist(map); 
		ArrayList<reviewDTO> rlist = mapper.rlist(map);
				
		int total = mapper.mytotal(map);
		int totalr = mapper.mytotal(map);
		
		String paging = Utility.mypaging(total, nowPage, recordPerPage, col, word);
		String paging2 = Utility.mypaging2(totalr, nowPager, recordPerPager, colr, wordr);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("colr", colr);
		request.setAttribute("wordr", wordr);
		request.setAttribute("nowPager", nowPager);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("paging2", paging2);
		request.setAttribute("total", total);
		request.setAttribute("totalr", totalr);
		request.setAttribute("dto", dto);
		request.setAttribute("rlist", rlist);
		return "/mypage/mylist";
	}
	
	@RequestMapping("/mypage/order/list")
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
		int cstotal = mapper.cstotal(map);
		
		String paging = Utility.paging1(total, nowPage, recordPerPage, state);
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("total", total);
		request.setAttribute("cstotal", cstotal);
		
		return "/mypage/order/list";
	}

}
