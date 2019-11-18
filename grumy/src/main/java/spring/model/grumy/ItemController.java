package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

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

	@RequestMapping("/item/read")
	public String read(int no, Model model, HttpServletRequest request) {
		System.out.println("ㅇㅁㄴㅇㄹㅁㄴㄹ");
		
		ItemDTO dto = mapper.read(no);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));
		model.addAttribute("dto", dto);
		
		Map<String, ArrayList<String>> sizeMap =  new HashMap<String, ArrayList<String>>();
		Map<String,Integer> countMap = new HashMap<String,Integer>();
		Map<String, String> map = new HashMap<String, String>();	
		map.put("no", String.valueOf(no));
		System.out.println("no:"+no);
		ArrayList<String> colorList = mapper.color(map);
				
		for(int i=0;i<colorList.size();i++) {
			map.put("color", colorList.get(i));
			System.out.println("color:"+colorList.get(i));
			ArrayList<String> sizeList = mapper.size(map);
			sizeMap.put(colorList.get(i), sizeList);
			
			for(int j=0;j<sizeList.size();j++) {
				map.put("itemSize",sizeList.get(j));
				System.out.println("size:"+sizeList.get(j));
				int count = mapper.count(map);
				countMap.put(colorList.get(i)+"/"+sizeList.get(j), (Integer)count);
			}
		}
		dto.setColorList(colorList);
		dto.setSizeMap(sizeMap);
		dto.setCountMap(countMap);
		System.out.println("으악:"+dto.getColorList().size());
		request.setAttribute("dto",dto);
		return "/item/read";
	}

	@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {
		String type = request.getParameter("type");
		ArrayList<ItemDTO> list = mapper.list(type);
//		for (ItemDTO item : list) {
//			String[] colors = item.getColor().split("/");
//			item.setColorList(colors);
//		}
		if (type.equals("shoesbag"))
			type = "shoes/bag";
		type = type.toUpperCase();
		request.setAttribute("type", type);
		request.setAttribute("list", list);
		return "/item/list";
	}
}
