package spring.model.grumy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ItemController {

	@RequestMapping("/item/list")
	public String list( Model model) {
		System.out.println("dasfasdfsadf");
		List<String> nameList = new ArrayList<String>(Arrays.asList("홍길동", "김철수", "박영희"));

		model.addAttribute("nameList", nameList);


		return "/item/list";
	}
}
