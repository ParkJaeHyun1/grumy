package spring.model.grumy;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin/main")
	public String home() {
	
		
		return "/admin/main";
	}
}
