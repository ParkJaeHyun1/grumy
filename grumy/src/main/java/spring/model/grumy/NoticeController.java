package spring.model.grumy;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.noticeMapper;
import spring.model.notice.NoticeDTO;
import spring.model.utility.Utility;

@Controller
public class NoticeController {
	@Autowired
	noticeMapper mapper;
	
	@PostMapping("/notice/create")
	public String create(NoticeDTO dto) {
	

		int flag = mapper.create(dto);
		
		if(flag == 1) {
			return "redirect:/notice/list";
		}else {
			return null;
		}
		
		
	}
	
	@PostMapping("/notice/update")
	public String update(NoticeDTO dto) {
		
		mapper.update(dto);
		
		return "redirect:/notice/list";
	}
	
	@GetMapping("/notice/create")
	public String create() {
		
		return "/notice/create";
	}
	
	@GetMapping("/notice/update")
	public String update(int no,Model model) {
		
		NoticeDTO dto = mapper.read(no);
		
		model.addAttribute("dto",dto);
		
		
		return "/notice/update";
	}
	
	@GetMapping("/notice/delete")
	public String delete(Model model,int no) {
		
		int flag = mapper.delete(no);
		
		if(flag==1) {
			return "redirect:/notice/list";
		}else {
			return null;
		}
		
		
	}
	
	@GetMapping("/notice/read")
	public String read(int no, Model model) {
		NoticeDTO dto = mapper.read(no);
		
		String content = dto.getContent().replaceAll("\r\n", "<br>");
		
		dto.setContent(content);
		
		Map map = mapper.noread(no);
		
		BigDecimal [] noArr = {(BigDecimal)map.get("PRE_NO"),
								(BigDecimal)map.get("NEXT_NO")
								};
		
		String [] subjectArr= {(String)map.get("PRE_SUBJECT"),
								(String)map.get("NEXT_SUBJECT")
								};
		
		
		
		model.addAttribute("dto",dto);
		model.addAttribute("noArr",noArr);
		model.addAttribute("subjectArr",subjectArr);
				
		
		return "/notice/read";
	}
	
	@RequestMapping("/notice/list")
	public String list(HttpServletRequest request) {
		
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));

		if (col.equals("total"))
			word = "";
		//페이징 관련
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		int recordPerPage = 10; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;
		
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		
		List<NoticeDTO> list_ = mapper.list_();
		List<NoticeDTO> list = mapper.list(map);
		
		int total = mapper.total(map);

		
		String paging = Utility.paging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("list", list);
		request.setAttribute("list_", list_);
		request.setAttribute("paging", paging);
		request.setAttribute("total", total);
		
		
		return "/notice/list";
	}
	

}
