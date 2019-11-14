package spring.model.grumy;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.AdminMapper;

@Controller
public class AdminController {
	
	@Autowired
	private AdminMapper mapper;
	
	@RequestMapping("/admin/main")
	public String home(HttpServletRequest request) {
		
		int wait = mapper.count(100);
		request.setAttribute("stat", wait);
		
		return "/admin/main";
	}
	@RequestMapping("/admin/mwait")
	public String mwait() {
		return "/admin/mwait";
	}
}
