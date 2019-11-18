package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.community.communityDTO;
import spring.model.mapper.communityMapper;
import spring.model.utility.Utility;


@Controller
public class CommunityController {
	
	@Autowired
	private communityMapper mapper;
	
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
