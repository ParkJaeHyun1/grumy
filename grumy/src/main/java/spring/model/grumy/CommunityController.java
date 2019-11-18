package spring.model.grumy;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommunityController {
@RequestMapping("/community/list")
	public String list(HttpServletRequest request) {
		
		
		return "/community/list";
}
}
