package spring.model.grumy;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.delivery.DeliveryDTO;
import spring.model.mapper.deliveryMapper;
import spring.model.notice.NoticeDTO;
import spring.model.utility.Utility;

@Controller
public class DeliveryController {
	
	@Autowired
	deliveryMapper mapper;
	
	@PostMapping("/delivery/passcheck")
	public String passcheck(int no,HttpServletRequest request) {
		
		int flag = 0;
		
		String passwd = mapper.passcheck(no);
		
		if(request.getParameter("passwd").equals(passwd)) {
			flag = 1;
			
		}

		if(flag==1) {
			
			request.setAttribute("no", no);
			return "redirect:/delivery/read?no="+no;
		}else {
			return null;
		}
		
		
		
	}
	
	@GetMapping("/delivery/passcheck")
	public String passcheck() {
		
		return "/delivery/passcheck";
	}
	
	
	@PostMapping("/delivery/update")
	public String update(DeliveryDTO dto,HttpServletRequest request) {
		
		String basePath = request.getRealPath("/storage");
		
		int filesize = (int)dto.getFileMF().getSize();
		
		if (filesize > 0) {
			dto.setFile1(Utility.saveFileSpring(dto.getFileMF(), basePath));
			
		}
		int flag = mapper.update(dto);
		
		if(flag ==1)
			return "redirect:/delivery/list";
		else
			return null;
		
	}
	
	@GetMapping("/delivery/update")
	public String update(Integer no,Model model) {
		DeliveryDTO dto = mapper.read(no);
		
		model.addAttribute("dto",dto);
		
		return "/delivery/update";
	}
	
	@GetMapping("/delivery/delete")
	public String delete(int no) {
		int flag = mapper.delete(no);
		
		if(flag==1) {
			return "redirect:/delivery/list";
		}else {
			return null;
		}
	}
	
	@RequestMapping(value="/delivery/read",method = RequestMethod.GET)
		public String read(@RequestParam(value="no") int no, Model model) {
			DeliveryDTO dto = mapper.read(no);
			
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
					
			
			return "/delivery/read";
		}
	
	
	@PostMapping("/delivery/create")
	public String create(DeliveryDTO dto,HttpServletRequest request) {
		 String basePath = request.getRealPath("/storage"); 

		int filesize = (int)dto.getFileMF().getSize();
		
		if (filesize > 0) {
			dto.setFile1(Utility.saveFileSpring(dto.getFileMF(), basePath));
			
		}		
		
		int flag = mapper.create(dto);
		
		if (flag == 1) {
			return "redirect:list";
		}
		else {
			return "error";
		}
	}
	
	@GetMapping("/delivery/create")
	public String create() {
		
		return "/delivery/create";
	}
	
	@RequestMapping("/delivery/list")
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
		
		
		List<DeliveryDTO> list = mapper.list(map); 
		
		int total = mapper.total(map);

		
		String paging = Utility.paging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		
		return "/delivery/list";
	}

}
