package spring.model.grumy;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.community.communityDTO;
import spring.model.mapper.communityMapper;
import spring.model.utility.Utility;


@Controller
public class CommunityController {
	
	@Autowired
	private communityMapper mapper;
	
	@GetMapping("/community/read")
	public String read(int no, Model model) {
		communityDTO dto = mapper.read(no);
		
		String content = dto.getContent().replaceAll("\r\n", "<br>");
		
		dto.setContent(content);
		
		
		
		
		model.addAttribute("dto",dto);
				
		
		return "/community/read";
	}

	
	@PostMapping("/community/create")
	public String create(communityDTO dto,HttpServletRequest request) {
		
		String basePath = request.getRealPath("/storage");
		
		int filesize = (int)dto.getFilenameMF().getSize();
		
		if (filesize > 0) {
			dto.setFilesize(filesize+"");
			dto.setPicture(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
			
		}
		
		
		int flag = mapper.create(dto);
		
		if (flag == 1) {
			return "redirect:list";
		}
		else {
			return "error";
		}
	}
	
	@GetMapping("/community/create")
	public String create() {
		
		return "/community/create";
	}
	
@RequestMapping("/community/list")
	public String list(HttpServletRequest request,communityDTO dto) {
	String word = Utility.checkNull(request.getParameter("word"));
	String col = Utility.checkNull(request.getParameter("col"));
	
	Map map = new HashMap();
	map.put("col", col);
	map.put("word", word);
	
	ArrayList<communityDTO> list = mapper.list(map);
	
	request.setAttribute("col", col);
	request.setAttribute("word", word);
	request.setAttribute("list",list);
		return "/community/list";
}
}
