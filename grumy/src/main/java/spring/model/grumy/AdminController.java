package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.admin.AdminDTO;
import spring.model.community.communityDTO;
import spring.model.delivery.DeliveryDTO;
import spring.model.mapper.AdminMapper;
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
		int wait = mapper.total(100);	//입금대기
		int newOrder = mapper.total(200);	//신규주문
		int sReady = mapper.total(300);	//배송준비
		int sIng = mapper.total(400);	//배송중
		int sFin = mapper.total(500);	//배송완료
		
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
		ArrayList<DeliveryDTO> deliveryl = mapper.deliveryl(5);
		ArrayList<communityDTO> communityl = mapper.communityl(5);
		
		
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
	@GetMapping("/admin/mwait/list")
	public String mwait(HttpServletRequest request) {		
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
		map.put("state",100);
		
		ArrayList<OrderDTO> list = mapper.list(map);
		
		int totalP = mapper.totalP(map);
		
		String paging = Utility.paging(totalP, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		//request.setAttribute("total", total);
		
		request.setAttribute("list", list);
		return "/admin/mwait/list";

	}
	
	@GetMapping("/admin/newOrder")
	public String nOrder(HttpServletRequest request) {
		//List<OrderDTO> list = mapper.list(200);
		
		//request.setAttribute("list", list);
		return "/admin/newOrder";
	}
	@PostMapping("/admin/newOrder")
	public String nOrder(HttpServletRequest request, AdminDTO dto) {
		//List<OrderDTO> list = mapper.list(200);
		
		//request.setAttribute("list", list);
		
		
		return "/admin/newOrder";
	}
	@RequestMapping("/admin/sendReady")
	public String sReady(HttpServletRequest request) {
		//List<OrderDTO> list = mapper.list(300);
		
		//request.setAttribute("list", list);
			
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
}
