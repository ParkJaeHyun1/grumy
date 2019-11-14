package spring.model.grumy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		request.setAttribute("wait", wait);
		request.setAttribute("nOrder", nOrder);
		
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
	public String nOrder2(HttpServletRequest request) {
		List<AdminDTO> list = mapper.list(200);
		
		request.setAttribute("list", list);
	
		return "/admin/newOrder";
	}
}
