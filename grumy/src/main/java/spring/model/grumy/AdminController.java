package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bootpay.javaApache.BootpayApi;
import kr.co.bootpay.javaApache.model.request.Cancel;
import spring.model.board.BoardDTO;
import spring.model.item.ItemDTO;
import spring.model.mapper.AdminMapper;
import spring.model.mapper.itemMapper;
import spring.model.member.MemberDTO;
import spring.model.notice.NoticeDTO;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;
import spring.model.order.OrderService;
import spring.model.utility.Utility;

@Controller
public class AdminController {

	@Autowired
	private AdminMapper mapper;
	@Autowired
	private itemMapper itemMapper;
	@Autowired
	OrderService orderService;


	static BootpayApi api;

	@RequestMapping("/admin/main")
	public String home(HttpServletRequest request) {		
		int wait = mapper.total("�엯湲덈�湲�");		//�엯湲덈�湲�
		int newOrder = mapper.total("�떊洹쒖＜臾�");	//�떊洹쒖＜臾�
		int sReady = mapper.total("諛곗넚以�鍮�");	//諛곗넚以�鍮�
		int sIng = mapper.total("諛곗넚以�");		//諛곗넚以�
		int sFin = mapper.total("諛곗넚�셿猷�");		//諛곗넚�셿猷�
		int change = mapper.cstotal("援먰솚");   	//援먰솚�슂泥�
		int cancel = mapper.cstotal("痍⑥냼");   	//痍⑥냼�슂泥�
		int ret = mapper.cstotal("諛섑뭹");   		//諛섑뭹�슂泥� 
		int modify = mapper.cstotal("蹂�寃�");   		//蹂�寃쎌슂泥� 
		int etc = mapper.cstotal("湲고�");   		//湲고��슂泥� 
		int priceToday = mapper.priceTotal("t");	//�삤�뒛�젙�궛
		int priceDelay = mapper.priceTotal("d");	//�젙�궛�삁�젙

		ArrayList<NoticeDTO> noticet = mapper.noticel(1);
		NoticeDTO noticetr = noticet.get(0);

		ArrayList<NoticeDTO> noticel = mapper.noticel(5);
		ArrayList<BoardDTO> deliveryl = mapper.deliveryl(5);
		ArrayList<BoardDTO> communityl = mapper.communityl(5);
		ArrayList<OrderDTO> chartl = mapper.chartl();
		ArrayList<OrderDTO> chartlp = mapper.chartlp();

		request.setAttribute("noticetr", noticetr);
		request.setAttribute("noticel", noticel);
		request.setAttribute("deliveryl", deliveryl);
		request.setAttribute("communityl", communityl);
		request.setAttribute("chartl", chartl);
		request.setAttribute("chartlp", chartlp);
		request.setAttribute("wait", wait);
		request.setAttribute("newOrder", newOrder);
		request.setAttribute("sReady", sReady);
		request.setAttribute("sIng", sIng);
		request.setAttribute("sFin", sFin);
		request.setAttribute("change", change);
		request.setAttribute("cancel", cancel);
		request.setAttribute("modify", modify);
		request.setAttribute("etc", etc);
		request.setAttribute("ret", ret);
		request.setAttribute("priceToday", priceToday);
		request.setAttribute("priceDelay", priceDelay);

		return "/admin/main";
	}
	@RequestMapping("/admin/itemManage/list")
	public String itemManage(HttpServletRequest request) {		
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));
		//String id = (String) session.getAttribute("id");
		//session.setAttribute("sessionId", nickname);
		//�럹�씠吏� 愿��젴
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} 	
		int recordPerPage = 20; //�븳�럹�씠吏��떦 蹂댁뿬以� �젅肄붾뱶 媛��닔

		//�뵒鍮꾩뿉�꽌 媛��졇�삱 �닚踰�
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
	@RequestMapping("/admin/moneyView/list")
	public String moneyView(HttpServletRequest request) {		
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));
		String datec = Utility.checkNull(request.getParameter("datec"));

		//�럹�씠吏� 愿��젴
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} 	
		int recordPerPage = 10; //�븳�럹�씠吏��떦 蹂댁뿬以� �젅肄붾뱶 媛��닔

		//�뵒鍮꾩뿉�꽌 媛��졇�삱 �닚踰�
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;		

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("datec",datec);		

		ArrayList<OrderDTO> moneyl = mapper.moneyl(map);	
		int total = mapper.moneyP(map);
		String paging = Utility.pagingMv(total, nowPage, recordPerPage, col, word, datec);

		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("moneyl", moneyl);
		request.setAttribute("datec", datec);

		return "/admin/moneyView/list";
	}


	@RequestMapping("/admin/order/updateProc")
	@ResponseBody
	public String confirm(@RequestBody Map<String, Object> map) {

		String orderid = (String) map.get("orderid");
		String orderno = (String) map.get("orderno");
		int listSize = Integer.parseInt(map.get("listSize").toString());
		int cancelPrice = (int)map.get("cancelno");
		ArrayList state = (ArrayList)map.get("state");
		ArrayList deliveryno = (ArrayList)map.get("deliveryno");
		ArrayList orderItemNo = (ArrayList)map.get("orderItemNo");
		ArrayList itemCountIncrease = (ArrayList)map.get("itemCountIncrease");
		ArrayList itemOptionNo = (ArrayList)map.get("itemOptionNo");
		
		String norderState = (String)state.get(0);
		Map mapU = new HashMap();
		mapU.put("orderno", orderno);
		mapU.put("state", norderState);

		if(norderState.equals("諛곗넚以�鍮�")) {
			mapper.pdateCheck(orderno);
			mapper.updatePdate(orderno);
		}
		mapper.updateState(mapU);
		for(int i = 0; i<listSize; i++) {
			mapU.put("state",state.get(i+1));
			mapU.put("deliveryno",deliveryno.get(i));
			mapU.put("orderItemNo",orderItemNo.get(i));
			mapper.updateStateP(mapU);
			if((int)itemCountIncrease.get(i)>0) {
				mapU.put("count", itemCountIncrease.get(i));
				mapU.put("itemOptionNo", itemOptionNo.get(i));
				itemMapper.increaseItemCount(map);
			}
		}
		
		if(cancelPrice>0) {
			Cancel cancel = new Cancel();
			cancel.receipt_id = orderid;
			cancel.name = "愿�由ъ옄 援щⅤ誘�";
			cancel.reason = "痍⑥냼�슂泥�";
			cancel.price = cancelPrice;
			try { 
				api = new BootpayApi("5dd76d0802f57e0021e217c4", "z8giuaYFj4yvrCmsO3IOVYXaid2+VDqIkn+oaFsLe0k=");    
				api.getAccessToken();  

				HttpResponse res = api.cancel(cancel);
				String str = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
				System.out.println("환불결과:"+str);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "success1";          
	}

	@RequestMapping("/admin/order/list")
	public String nOrder(HttpServletRequest request) {
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));
		String orderstate = Utility.checkNull(request.getParameter("orderstate"));

		System.out.println(word + " " + col + "/");
		//�럹�씠吏� 愿��젴
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} 		
		int recordPerPage = 10; //�븳�럹�씠吏��떦 蹂댁뿬以� �젅肄붾뱶 媛��닔

		//�뵒鍮꾩뿉�꽌 媛��졇�삱 �닚踰�
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("state", orderstate);

		ArrayList<OrderDTO> list = mapper.list(map);		
		int totalP = mapper.totalP(map);	
		String paging = Utility.pagingO(totalP, nowPage, recordPerPage, col, word, orderstate);

		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);
		request.setAttribute("orderstate", orderstate);
		return "/admin/order/list";
	}

	@RequestMapping(value = {"/mypage/order/read", "/admin/order/update"})
	public String read(HttpServletRequest request, HttpSession session, String orderno) {
		String URL = request.getServletPath();
		String path = URL;
		String id = (String)session.getAttribute("id");
		MemberDTO dto = mapper.read(id);
		ArrayList<OrderItemDTO> itemList = mapper.orderCount(id);
		Map map = new HashMap();

		for(OrderItemDTO item: itemList) { 
			map.put(item.getState(), item.getCount());

		}
		//String orderno = (String)request.getAttribute("orderno");
		map.put("id", id);
		map.put("orderno", orderno);

		OrderDTO readP = mapper.readP(map);
		ArrayList<OrderItemDTO> readPList = mapper.readPList(orderno);

		request.setAttribute("id", id);
		request.setAttribute("map", map);
		request.setAttribute("dto", dto);
		request.setAttribute("readP", readP);
		request.setAttribute("readPList", readPList);

		return path;
	}
}
