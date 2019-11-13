package spring.model.grumy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.item.ItemDTO;
import spring.model.mapper.itemMapper;


@Controller
public class ItemController {
	
	@Autowired
	private itemMapper mapper;
	
	@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {
		String type = request.getParameter("type");
		ArrayList<ItemDTO> list = mapper.list(type);
		for(ItemDTO item: list) {
			String[] colors= item.getColor().split("/");
			item.setColorList(colors);
		}
		if(type.equals("shoesbag"))
			type="shoes/bag";
		type = type.toUpperCase();
		request.setAttribute("type", type);
		request.setAttribute("list",list);
		return "/item/list";
	}
}
