package spring.model.grumy;

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

import spring.model.item.ItemDTO;
import spring.model.mapper.itemMapper;
import spring.model.review.reviewDTO;
import spring.model.utility.ItemUtility;
import spring.model.utility.Utility;

@Controller
public class ItemController {

	@Autowired
	private itemMapper mapper;

	@GetMapping("/item/list/delete")
	public String delete(int itemNo, String type) {
		System.out.println("come " + itemNo + " " + type);
		mapper.delete(itemNo);
		
		return "redirect:/item/list?type="+type;

	}
	
	@PostMapping("/item/create")
	public String create(ItemDTO dto, HttpServletRequest request) {
//		String basePath = request.getRealPath("/storage");
//		
//		int filesize = (int) dto.getFilenameMF().getSize();
//
//		if (filesize > 0) {
//			dto.content(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
//		}
//
//		int flag = mapper.create(dto);
//		
//		if(flag == 1) {
//			return "redirect:/item/list";
//		}else {
//			return null;
//		}
		return "/item/create";
		
	}
	@GetMapping("/item/create")
	public String create() {
		
		return "/item/create";
	}
	
	
	@RequestMapping("/item/read")
	public String read(int itemNo, Model model, HttpServletRequest request) {

		ItemDTO dto = mapper.read(itemNo);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));
		request.setAttribute("dto",dto);
		return "/item/read";
	}

	@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {
		
		ItemDTO dto = new ItemDTO(); 
		String word = ItemUtility.checkNull(request.getParameter("word"));
		String col = ItemUtility.checkNull(request.getParameter("col"));
		String type = request.getParameter("type");
		String titleType;
		if (col.equals("total"))
			word = "";
		//페이징 관련
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int recordPerPage = 40; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;

		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("type", type);
		
		ArrayList<ItemDTO> list = mapper.list(map);
		System.out.println("개수:"+list.size());
		int total = mapper.total(map);
		
		String paging = ItemUtility.paging(total, nowPage, recordPerPage, col, word,type);
		
		titleType = type;
		if (titleType.equals("SHOESBAG"))
			titleType = "SHOES/BAG";
		
		
		//request.setAttribute("subType", typeList);
		request.setAttribute("parentType", titleType);
		request.setAttribute("type", type);
		request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		
		
		
		return "/item/list";
	}
}
