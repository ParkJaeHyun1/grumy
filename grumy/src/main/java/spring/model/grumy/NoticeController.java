package spring.model.grumy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.noticeMapper;

@Controller
public class NoticeController {
	@Autowired
	noticeMapper mapper;
	
	@RequestMapping("/notice/list")
	public String list() {
		
		
		return "/notice/list";
	}
	

}
