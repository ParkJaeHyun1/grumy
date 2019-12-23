package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.board.BoardDTO;
import spring.model.item.ItemDTO;
import spring.model.mapper.AdminMapper;
import spring.model.member.MemberDTO;
import spring.model.notice.NoticeDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;
import spring.model.utility.Utility;

@Controller
public class AdminController {
	
	@Autowired
	private AdminMapper mapper;
	
	@RequestMapping("/admin/main")
	public String home(HttpServletRequest request) {		
		int wait = mapper.total("입금대기");		//입금대기
		int newOrder = mapper.total("신규주문");	//신규주문
		int sReady = mapper.total("배송준비");	//배송준비
		int sIng = mapper.total("배송중");		//배송중
		int sFin = mapper.total("배송완료");		//배송완료
		int change = mapper.cstotal("교환");   	//교환요청
	    int cancel = mapper.cstotal("취소");   	//취소요청
        int ret = mapper.cstotal("반품");   		//반품요청 
		
		ArrayList<NoticeDTO> noticet = mapper.noticel(1);
		NoticeDTO noticetr = noticet.get(0);
		
		ArrayList<NoticeDTO> noticel = mapper.noticel(5);
		ArrayList<BoardDTO> deliveryl = mapper.deliveryl(5);
		ArrayList<BoardDTO> communityl = mapper.communityl(5);
		ArrayList<OrderDTO> chartl = mapper.chartl();
		
		request.setAttribute("noticetr", noticetr);
		request.setAttribute("noticel", noticel);
		request.setAttribute("deliveryl", deliveryl);
		request.setAttribute("communityl", communityl);
		request.setAttribute("chartl", chartl);
		request.setAttribute("wait", wait);
		request.setAttribute("newOrder", newOrder);
		request.setAttribute("sReady", sReady);
		request.setAttribute("sIng", sIng);
		request.setAttribute("sFin", sFin);
		request.setAttribute("change", change);
	    request.setAttribute("cancel", cancel);
	    request.setAttribute("ret", ret);
		
		return "/admin/main";
	}
	@RequestMapping("/admin/itemManage/list")
	public String itemManage(HttpServletRequest request) {		
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));
		
		//페이징 관련
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} 	
		int recordPerPage = 20; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;		
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		
		ArrayList<ItemDTO> iteml = mapper.iteml(map);	
		int total = mapper.itemC(map);
		String paging = Utility.paging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("iteml", iteml);
		
		return "/admin/itemManage/list";
	}
	
	@RequestMapping("/admin/update")
	@ResponseBody
	public String confirm(@RequestBody Map<String,String> map) {
		System.out.println(map.get("orderno") + "/" + map.get("state") + " " + map.get("deliveryno") + " ");
		System.out.println(mapper.updateState(map));
		System.out.println(mapper.updateStateP(map));
		if(mapper.updateState(map)>0 && mapper.updateStateP(map)>0) {
			System.out.println("업뎃 성공");
		}
		return "success1";          
	}
	
	@RequestMapping(value = {"/admin/mwait/list", "/admin/newOrder/list",
					"/admin/sendReady/list", "/admin/sending/list","/admin/sendFin/list"})
	public String nOrder(HttpServletRequest request) {
		String path = request.getServletPath();
		String state = "";
		switch(path) {
			case "/admin/mwait/list":
				state = "입금대기";				
				break;
			case "/admin/newOrder/list":
				state = "신규주문";				
				break;
			case "/admin/sendReady/list":
				state = "배송준비";				
				break;
			case "/admin/sending/list":
				state = "배송중";				
				break;
			case "/admin/sendFin/list":
				state = "배송완료";				
				break;
			default : 
				System.out.println("error");
				break;
		}
		
		String word = request.getParameter("word");
		String col = request.getParameter("col");
		String nowPageS = request.getParameter("nowPage");
		Map map = paging(word, col, nowPageS, state);
	
		int nowPage = (int) map.get("nowPage");
		String paging = (String)map.get("paging");
		ArrayList<OrderDTO> list = (ArrayList<OrderDTO>) map.get("list");

		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);
		return path;
	}
	
	@RequestMapping("/admin/read")
	public String read(HttpServletRequest request, HttpSession session, String orderno) {
		String id = (String)session.getAttribute("id");
		MemberDTO dto = mapper.read(id);
		ArrayList<OrderItemDTO> itemList = mapper.orderCount(id);
		Map map = new HashMap();
		
		for(OrderItemDTO item: itemList) { 
			map.put(item.getState(), item.getCount());
			
			System.out.println(item.getState() + item.getCount());
		}
		//String orderno = (String)request.getAttribute("orderno");
		map.put("id", id);
		map.put("orderno", orderno);
		
		OrderDTO readP = mapper.readP(map);
		ArrayList<OrderItemDTO> readPList = mapper.readPList(orderno);
		
		int deliveryPay = 0;
		int totalPay = readP.getTotalPrice() - readP.getSalePrice();
		if(totalPay <= 50000) {
			deliveryPay = 5000;
			totalPay += 5000;
		}
		
		request.setAttribute("map", map);
		request.setAttribute("dto", dto);
		request.setAttribute("totalPay", totalPay);
		request.setAttribute("deliveryPay", deliveryPay);
		request.setAttribute("readP", readP);
		request.setAttribute("readPList", readPList);
		
		return "/admin/read";
	}
	
	//페이징 처리 통합
	public Map paging(String word, String col, String nowPageS, String state) {
		word = Utility.checkNull(word);
		col = Utility.checkNull(col);
		
		//페이징 관련
		int nowPage = 1;
		if(nowPageS!= null){
			nowPage = Integer.parseInt(nowPageS);
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
		map.put("state",state);
		
		ArrayList<OrderDTO> list = mapper.list(map);		
		int totalP = mapper.totalP(map);	
		String paging = Utility.paging(totalP, nowPage, recordPerPage, col, word);
		
		map.put("nowPage", nowPage);
		map.put("paging", paging);
		map.put("list", list);
		
		return map;
	}

}
