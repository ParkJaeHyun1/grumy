package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.item.ItemDTO;
import spring.model.mapper.itemMapper;

@Controller
public class ItemController {

	@Autowired
	private itemMapper mapper;

	@RequestMapping("/item/read")
	public String read(int no, Model model) {
		System.out.println("ㅇㅁㄴㅇㄹㅁㄴㄹ");
		ItemDTO dto = mapper.read(no);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));
		model.addAttribute("dto", dto);


		return "/item/read";
	}

	@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {
		String type = request.getParameter("type");
		ArrayList<ItemDTO> list = mapper.list(type);
		for (ItemDTO item : list) {
			String[] colors = item.getColor().split("/");
			item.setColorList(colors);
		}
		if (type.equals("shoesbag"))
			type = "shoes/bag";
		type = type.toUpperCase();
		request.setAttribute("type", type);
		request.setAttribute("list", list);
		return "/item/list";
	}
}
