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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.board.BoardDTO;
import spring.model.mapper.serviceMapper;
import spring.model.notice.NoticeDTO;
import spring.model.utility.Utility;

@Controller
public class ServiceController {
	
	@Autowired
	serviceMapper mapper;
	
	@PostMapping("/service/create_reply")
	public String create_reply(BoardDTO dto) {
		mapper.create_reply(dto);

		
		return "redirect:/service/list";
	}
	
	@GetMapping("/service/create_reply")
	public String create_reply(int board_no,HttpServletRequest request,HttpSession session) {
		BoardDTO dto = mapper.read(board_no);
		String id = (String) session.getAttribute("id");
		
		
		request.setAttribute("name", mapper.getname(id));
		request.setAttribute("dto", dto);
		
		return "/service/create_reply";
	}
	
	@PostMapping("/service/update")
	public String update(BoardDTO dto,HttpServletRequest request) {
		
		int flag = mapper.update(dto);
		
		if(flag ==1)
			return "redirect:/service/list";
		else
			return null;
		
	}
	
	@GetMapping("/service/update")
	public String update(Integer board_no,Model model) {
		BoardDTO dto = mapper.read(board_no);
		
		model.addAttribute("dto",dto);
		
		return "/service/update";
	}
	
	@GetMapping("/service/delete")
	public String delete(int ref) {
		mapper.delete(ref);
		

		
			return "redirect:/service/list";
		
		
	}
	@GetMapping("/service/indelete")
	public String indelete(int board_no) {
		mapper.indelete(board_no);
		
		
		
		return "redirect:/service/list";
		
		
	}
	
	
	@GetMapping("/service/read")
		public String read(int board_no, Model model,HttpSession session) {
			String id = (String)session.getAttribute("id");
			String grade = (String) session.getAttribute("grade");

			if( id ==null) {
				id =  "";
				grade ="";
			}
			
			
		
			BoardDTO dto = mapper.read(board_no);
			if(dto==null) {
				return "/error";
			}
			int refcount = mapper.refcount(dto.getRef());
			System.out.println(refcount);
			

			
			if(grade.equals("A")||id.equals(dto.getId())||dto.getLev().equals("S")) {
				 
			
			String content = dto.getContent().replaceAll("\r\n", "<br>");
			
			dto.setContent(content);
			

			model.addAttribute("refcount",refcount);
			model.addAttribute("dto",dto);
			
			return "/service/read";
			
			}else {
				return "/service/error";
			}
		}
	
	
	@PostMapping("/service/create")
	public String create(BoardDTO dto,HttpServletRequest request) {

		int flag = mapper.create(dto);
		
		if (flag == 1) {
			return "redirect:list";
		}
		else {
			return "error";
		}
	}
	
	@GetMapping("/service/create")
	public String create(HttpSession session,HttpServletRequest request) {
		String id = (String) session.getAttribute("id");
		
		request.setAttribute("name", mapper.getname(id));
		
		return "/service/create";
	}
	
	@RequestMapping("/service/list")
	public String list(HttpServletRequest request) {
		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));
		String category = Utility.checkNull(request.getParameter("category"));
		System.out.println(category);

		
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
		map.put("category",category);
		
		
		
		List<BoardDTO> list = mapper.list(map); 
		
		if(category == "") {
		List<BoardDTO> list_ = mapper.list_(); 
		request.setAttribute("list_", list_);
		}
				
		int total = mapper.total(map);
		

		
		String paging = Utility.paging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("total", total);
		
		return "/service/list";
	}

}
