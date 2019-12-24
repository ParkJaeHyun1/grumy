package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.review.reviewDTO;
import spring.model.board.BoardDTO;
import spring.model.mapper.reviewMapper;

import spring.model.utility.Utility;

@Controller
public class ReviewController {

	@Autowired
	private reviewMapper mapper;

	@PostMapping("/review/create_reply")
	public String create_reply(int reviewNo, String replyContent) {
		Map map = new HashMap();
		map.put("reviewNo", reviewNo);
		map.put("replyContent", replyContent);
		mapper.create_reply(map);
		
		return "redirect:/review/list";
	}

	@GetMapping("/review/create_reply")
	public String create_reply(int reviewNo,String content, HttpServletRequest request, Model model) {
		
		
		reviewDTO dto = mapper.read(reviewNo);

		model.addAttribute("dto", dto);
		request.setAttribute("reviewNo",reviewNo);
		
		
		return "/review/create_reply";
	}

	@PostMapping("/review/list/update")
	public String update(reviewDTO dto, HttpServletRequest request) {

		String basePath = request.getRealPath("/storage");

		int filesize = (int) dto.getFilenameMF().getSize();

		if (filesize > 0) {
			dto.setPicture(Utility.saveFileSpring(dto.getFilenameMF(), basePath));

		}
		int flag = mapper.update(dto);

		if (flag == 1)
			return "redirect:/review/list";
		else
			return null;

	}

	@GetMapping("/review/list/update")
	public String update(Integer reviewNo, Model model) {
		System.out.println("너냐");
		reviewDTO dto = mapper.read(reviewNo);
		model.addAttribute("dto", dto);

		return "/review/update";
	}

	@GetMapping("/review/list/delete")
	public String delete(int reviewNo) {
		 mapper.delete(reviewNo);

			return "redirect:/review/list";
		
	}

	@PostMapping("/review/create")
	public String create(reviewDTO dto, HttpServletRequest request) {
		String basePath = request.getRealPath("/storage");

		int filesize = (int) dto.getFilenameMF().getSize();

		if (filesize > 0) {
			dto.setPicture(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
		}

		int flag = mapper.create(dto);

		if (flag == 1) {
			return "redirect:/review/list";
		} else {
			return null;
		}

	}

	@GetMapping("/review/create")
	public String create() {

		return "/review/create";
	}

	@RequestMapping("/review/list")
	public String list(HttpServletRequest request,Model model) {

		int pcount = mapper.pcount();

		String word = Utility.checkNull(request.getParameter("word"));
		String col = Utility.checkNull(request.getParameter("col"));

		if (col.equals("total"))
			word = "";
		// 페이징 관련
		int nowPage = 1;
		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int recordPerPage = 6; // 한페이지당 보여줄 레코드 갯수

		// 디비에서 가져올 순번
		int sno = ((nowPage - 1) * recordPerPage) + 1;
		int eno = nowPage * recordPerPage;

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);

		Map map2 = new HashMap();
		map2.put("col", col);
		map2.put("word", word);
		map2.put("sno", sno);
		map2.put("eno", sno+40);
		
		
		ArrayList<reviewDTO> list = mapper.list(map);
		ArrayList<reviewDTO> listp = mapper.listp(map2);
		
		

		int total = mapper.total(map);

		String paging = Utility.rpaging(total, nowPage, recordPerPage, col, word);
		
		
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);

		request.setAttribute("pcount", pcount);
		request.setAttribute("list", list);
		request.setAttribute("listp", listp);

		
		return "/review/list";
	}
	

}
