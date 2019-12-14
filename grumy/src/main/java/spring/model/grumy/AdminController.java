package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.board.BoardDTO;
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
		int wait = mapper.total("입금대기");	//입금대기
		int newOrder = mapper.total("신규주문");	//신규주문
		int sReady = mapper.total("배송준비");	//배송준비
		int sIng = mapper.total("배송중");	//배송중
		int sFin = mapper.total("배송완료");	//배송완료
		
//		ArrayList<OrderDTO> list1 = mapper.list(100);
//		System.out.println(list1.get(1).getOrderItemList().size());
//		
//		Iterator<OrderDTO> iter = list1.iterator();
//		while(iter.hasNext()) {
//			OrderDTO dto = iter.next();
//			ArrayList<OrderItemDTO> dto2 = dto.getOrderItemList();
//			Iterator<OrderItemDTO> iter2 = dto2.iterator();
//			
//			while(iter2.hasNext()) {
//				OrderItemDTO dto3 = iter2.next();
//				
//			}
//		}
		ArrayList<NoticeDTO> noticet = mapper.noticel(1);
		NoticeDTO noticetr = noticet.get(0);
		
		ArrayList<NoticeDTO> noticel = mapper.noticel(5);
		ArrayList<BoardDTO> deliveryl = mapper.deliveryl(5);
		ArrayList<BoardDTO> communityl = mapper.communityl(5);
		
		
		request.setAttribute("noticetr", noticetr);
		request.setAttribute("noticel", noticel);
		request.setAttribute("deliveryl", deliveryl);
		request.setAttribute("communityl", communityl);
		request.setAttribute("wait", wait);
		request.setAttribute("newOrder", newOrder);
		request.setAttribute("sReady", sReady);
		request.setAttribute("sIng", sIng);
		request.setAttribute("sFin", sFin);
		
		return "/admin/main";
	}
	public Map paging(String word, String col, String nowPageS, String state) {	//페이징 처리
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
	
	@RequestMapping("/admin/update")
	@ResponseBody
	public String confirm(@RequestBody Map map) {
		System.out.println(map.get("no") + " come");
		if(mapper.updateState(map)>0) {
			System.out.println("업뎃 성공");
		}
		return "success";          
	}
	
	@GetMapping("/admin/mwait/list")
	public String mwait(HttpServletRequest request) {		
		String word = request.getParameter("word");
		String col = request.getParameter("col");
		String nowPageS = request.getParameter("nowPage");
		Map map = paging(word, col, nowPageS, "입금대기");
	
		int nowPage = (int) map.get("nowPage");
		String paging = (String)map.get("paging");
		ArrayList<OrderDTO> list = (ArrayList<OrderDTO>) map.get("list");
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);

		return "/admin/mwait/list";
	}
	
	@RequestMapping("/admin/newOrder/list")
	public String nOrder(HttpServletRequest request) {
		String word = request.getParameter("word");
		String col = request.getParameter("col");
		String nowPageS = request.getParameter("nowPage");
		Map map = paging(word, col, nowPageS, "신규주문");
	
		int nowPage = (int) map.get("nowPage");
		String paging = (String)map.get("paging");
		ArrayList<OrderDTO> list = (ArrayList<OrderDTO>) map.get("list");

		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);
		return "/admin/newOrder/list";
	}
	
	@RequestMapping("/admin/sendReady")
	public String sReady(HttpServletRequest request) {
		String word = request.getParameter("word");
		String col = request.getParameter("col");
		String nowPageS = request.getParameter("nowPage");
		Map map = paging(word, col, nowPageS, "배송준비");
	
		int nowPage = (int) map.get("nowPage");
		String paging = (String)map.get("paging");
		ArrayList<OrderDTO> list = (ArrayList<OrderDTO>) map.get("list");

		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);
		return "/admin/sendReady";
	}
	@RequestMapping("/admin/sending")
	public String sIng(HttpServletRequest request) {
		//List<OrderDTO> list = mapper.list(200);
		
		//request.setAttribute("list", list);
				
		return "/admin/sending";
	}
	@RequestMapping("/admin/sendFin")
	public String sFin(HttpServletRequest request) {
		//List<OrderDTO> list = mapper.list(200);
		
		//request.setAttribute("list", list);
			
		return "/admin/sendFin";
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
		
		OrderDTO readPList = mapper.readP(map);
		
		
		request.setAttribute("map", map);
		request.setAttribute("dto", dto);
		request.setAttribute("readPList", readPList);
		
		return "/admin/read";
	}
}
