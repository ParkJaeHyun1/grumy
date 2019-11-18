package spring.model.grumy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.admin.AdminDTO;
import spring.model.mapper.AdminMapper;

@Controller
public class AdminController {
	
	@Autowired
	private AdminMapper mapper;
	
	@RequestMapping("/admin/main")
	public String home(HttpServletRequest request) {
		
		int wait = mapper.count(100);	//입금대기
		int nOrder = mapper.count(200);	//신규주문
		int sReady = mapper.count(300);	//배송준비
		int sIng = mapper.count(400);	//배송중
		int sFin = mapper.count(500);	//배송완료
		request.setAttribute("wait", wait);
		request.setAttribute("nOrder", nOrder);
		request.setAttribute("sReady", sReady);
		request.setAttribute("sIng", sIng);
		request.setAttribute("sFin", sFin);
		
		return "/admin/main";
	}
	@GetMapping("/admin/mwait")
	public String mwait(HttpServletRequest request) {
		List<AdminDTO> list = mapper.list(100);
		
		request.setAttribute("list", list);
		return "/admin/mwait";
	}
	
	@GetMapping("/admin/newOrder")
	public String nOrder(HttpServletRequest request) {
		List<AdminDTO> list = mapper.list(200);
		
		request.setAttribute("list", list);
		return "/admin/newOrder";
	}
	@PostMapping("/admin/newOrder")
	public String nOrder(HttpServletRequest request, AdminDTO dto) {
		List<AdminDTO> list = mapper.list(200);
		
		request.setAttribute("list", list);
		
		System.out.println(dto.getNo());
	
		return "/admin/newOrder";
	}
	@RequestMapping("/admin/sendReady")
	public String sReady(HttpServletRequest request) {
		List<AdminDTO> list = mapper.list(300);
		
		request.setAttribute("list", list);
	
		
		return "/admin/sendReady";
	}
	@RequestMapping("/admin/sending")
	public String sIng(HttpServletRequest request) {
		List<AdminDTO> list = mapper.list(200);
		
		request.setAttribute("list", list);
		
		
		return "/admin/sending";
	}
	@RequestMapping("/admin/sendFin")
	public String sFin(HttpServletRequest request) {
		List<AdminDTO> list = mapper.list(200);
		
		request.setAttribute("list", list);
		
		
		return "/admin/sendFin";
	}
}
