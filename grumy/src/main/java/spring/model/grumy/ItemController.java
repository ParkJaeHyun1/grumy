package spring.model.grumy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ItemController {

	@RequestMapping("/item/list")
	public String list( Model model) {
		System.out.println("dasfasdfsadf");
		
		return "/item/list";
	}
}
