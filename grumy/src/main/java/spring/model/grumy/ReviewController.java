package spring.model.grumy;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.community.communityDTO;
import spring.model.item.ItemDTO;
import spring.model.mapper.itemMapper;
import spring.model.mapper.reviewMapper;
import spring.model.notice.NoticeDTO;
import spring.model.review.reviewDTO;
import spring.model.utility.Utility;

@Controller
public class ReviewController {
	
	
	@Autowired
	private reviewMapper mapper;
	
	@PostMapping("/review/update")
	public String update(reviewDTO dto,HttpServletRequest request) {
		
		String basePath = request.getRealPath("/storage");
		
		
		int filesize = (int) dto.getFilenameMF().getSize();

		if (filesize > 0) {
			dto.setPicture(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
			
		}
		int flag = mapper.update(dto);
		
		if(flag ==1)
			return "redirect:/review/list";
		else
			return null;
		
	}
	
	@GetMapping("/review/update")
	public String update(Integer reviewNo,Model model) {
		reviewDTO dto = mapper.read(reviewNo);
		
		model.addAttribute("dto",dto);
		
		return "/review/update";
	}
	
	@GetMapping("/review/delete")
	public String delete(int reviewNo) {
		int flag = mapper.delete(reviewNo);
		
		if(flag==1) {
			return "redirect:/review/list";
		}else {
			return null;
		}
	}
	
	@PostMapping("/review/create")
	public String create(reviewDTO dto, HttpServletRequest request) {
		String basePath = request.getRealPath("/storage");
		
		int filesize = (int) dto.getFilenameMF().getSize();

		if (filesize > 0) {
			dto.setPicture(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
		}

		int flag = mapper.create(dto);
		
		if(flag == 1) {
			return "redirect:/review/list";
		}else {
			return null;
		}
		
		
	}
	@GetMapping("/review/create")
	public String create() {
		
		return "/review/create";
	}
	
	
	
	
	
	
	@RequestMapping("/review/list")
	public String list(HttpServletRequest request) {
		
		
		int pcount = mapper.pcount();
		
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));

		if (col.equals("total"))
			word = "";
		//페이징 관련
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int recordPerPage = 5; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;
		
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);

		ArrayList<reviewDTO> list = mapper.list(map);
		System.out.println("씨발!:"+list.size());
		
		int total = mapper.total(map);
		
		String paging = Utility.paging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
				
				
		
		request.setAttribute("pcount", pcount);
		request.setAttribute("list",list);
		return "/review/list";
	}
}
