package spring.model.grumy;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.item.ItemDTO;
import spring.model.mapper.itemMapper;
import spring.model.mapper.reviewMapper;
import spring.model.review.reviewDTO;

@Controller
public class ReviewController {
	
	
	@Autowired
	private reviewMapper mapper;
	
	@RequestMapping("/review/read")
	public String read(Locale locale, Model model, int no) {
		reviewDTO dto = mapper.read(no);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));
		model.addAttribute("dto", dto);
		
		return "/review/read";
	}
	
	@RequestMapping("/review/create")
	public String create(Locale locale, Model model) {
	
		
		return "/review/create";
	}
	@RequestMapping("/review/list")
	public String list(HttpServletRequest request) {
		ArrayList<reviewDTO> list = mapper.list();
		System.out.println("씨발!:"+list.size());
		request.setAttribute("list",list);
		return "/review/list";
	}
}
