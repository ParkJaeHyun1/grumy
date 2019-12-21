package spring.model.grumy;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.board.BoardDTO;
import spring.model.item.ItemDTO;
import spring.model.item.ItemOptionDTO;
import spring.model.item.ItemService;
import spring.model.item.ItemTypeDTO;
import spring.model.mapper.itemMapper;
import spring.model.review.reviewDTO;
import spring.model.utility.ItemUtility;
import spring.model.utility.Utility;

@Controller
public class ItemController {

	@Autowired
	private itemMapper mapper;
	@Autowired
	private ItemService itemService;


//	@GetMapping("/item/reSearch")
//	public String search(HttpServletRequest request, Model model) {
//		
//		String keyword = ItemUtility.checkNull(request.getParameter("keyword"));
//		String search_type = ItemUtility.checkNull(request.getParameter("search_type"));
//		String type = request.getParameter("type");
//
//		if(search_type.equals("SearchTotal"))              
//			keyword = "";
//		
//		if(search_type.equals("") || search_type == null)
//			keyword = "";
//		
//		//페이징 관련
//		int nowPage = 1;
//		if(request.getParameter("nowPage")!= null){
//			nowPage = Integer.parseInt(request.getParameter("nowPage"));
//		}
//
//		int recordPerPage = 40; //한페이지당 보여줄 레코드 갯수
//
//		//디비에서 가져올 순번
//		int sno = ((nowPage-1) * recordPerPage) + 1 ;
//		int eno = nowPage * recordPerPage;
//
//		Map map = new HashMap();
//		map.put("search_type", search_type);
//		map.put("keyword", keyword);
//		map.put("sno",sno);
//		map.put("eno",eno);
//		map.put("type", type);
//		System.out.println(keyword);
//		System.out.println(search_type);
//
//		ArrayList<ItemDTO> searchlist = mapper.search(map);
//		//System.out.println("개수:"+searchlist.size());
//		int SearchTotal = mapper.SearchTotal(map);
//
//		String paging = ItemUtility.paging(SearchTotal, nowPage, recordPerPage, search_type, keyword,type);
//		
//		model.addAttribute("AlltypeList", mapper.AllParentType());
//		model.addAttribute("parentType",mapper.selectParentType(type));
//		model.addAttribute("searchlist",searchlist);
//		model.addAttribute("search_type",search_type);
//		model.addAttribute("keyword",keyword);
//		model.addAttribute("nowPage",nowPage);
//		model.addAttribute("paging",paging);
//
//		return "/item/reSearch";
//	}

	@GetMapping("/item/search")
	public String search(HttpServletRequest request) {
		
		String keyword = ItemUtility.checkNull(request.getParameter("keyword"));
		String search_type = ItemUtility.checkNull(request.getParameter("search_type"));
		String type = request.getParameter("type"); //관리자 삭제기능
		
		
		if(search_type.equals("SearchTotal"))              
			keyword = "";
		
		if(search_type.equals("") || search_type == null)
			keyword = "";
		
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
		map.put("search_type", search_type);
		map.put("keyword", keyword);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("type", type);

		System.out.println(keyword);
		System.out.println(search_type);

		ArrayList<ItemDTO> searchlist = mapper.search(map);
		System.out.println("header에서 온 상품 개수:"+searchlist.size());
		int SearchTotal = mapper.SearchTotal(map);

		String paging = ItemUtility.paging(SearchTotal, nowPage, recordPerPage, search_type, keyword, type);
		
		request.setAttribute("AlltypeList", mapper.AllParentType());
		request.setAttribute("parentType",mapper.selectParentType(type));
		request.setAttribute("searchlist",searchlist);
		request.setAttribute("search_type",search_type);
		request.setAttribute("keyword",keyword);
		request.setAttribute("nowPage",nowPage);
		request.setAttribute("paging",paging);

		return "/item/search";
	}

	@RequestMapping("/item/delete")
	public String delete(int itemNo, String type) {
		System.out.println("개새 꺄 아,아ㅏㅇ아");
		if(itemService.delete(itemNo))
			return "redirect:/item/list?type="+type;
		return "/item/error";
	}



	@RequestMapping("/item/create")
	public String create(ItemDTO dto, HttpServletRequest request,String[] itemColorList,String[] itemSizeList,int[] itemCountList) throws UnsupportedEncodingException {
		ArrayList<ItemOptionDTO> itemOptionList = new ArrayList<ItemOptionDTO>();

		for(int i=0;i<itemColorList.length;i++) 
			itemOptionList.add(new ItemOptionDTO(0,0,itemCountList[i],itemSizeList[i],itemColorList[i]));

		dto.setItemOptionList(itemOptionList);

		if (dto.getFilenameMF().getSize() > 0) 
			dto.setImage(Utility.saveFileSpring(dto.getFilenameMF(), request.getRealPath("/images")));

		if(itemService.create(dto))
			return "redirect:/item/list?type="+URLEncoder.encode(dto.getType(), "UTF-8");
		else
			return "redirect:/item/error";   //인서트실패시 에러페이지로이동해야되는데 에러페이지 몬지모를라서 일단 해놈

	}
	
	@RequestMapping("/item/update")
	public String update(ItemDTO dto, HttpServletRequest request,String[] itemColorList,String[] itemSizeList,int[] itemCountList) throws UnsupportedEncodingException {
		ArrayList<ItemOptionDTO> itemOptionList = new ArrayList<ItemOptionDTO>();

		for(int i=0;i<itemColorList.length;i++) 
			itemOptionList.add(new ItemOptionDTO(dto.getItemNo(),0,itemCountList[i],itemSizeList[i],itemColorList[i]));

		dto.setItemOptionList(itemOptionList);

		if (dto.getFilenameMF().getSize() > 0) 
			dto.setImage(Utility.saveFileSpring(dto.getFilenameMF(), request.getRealPath("/images")));

		if(itemService.update(dto))
			return "redirect:/item/list?type="+URLEncoder.encode(dto.getType(), "UTF-8");
		else
			return "redirect:/item/error";   //인서트실패시 에러페이지로이동해야되는데 에러페이지 몬지모를라서 일단 해놈
	}
	
	@RequestMapping("/item/updateForm")
	public String updateForm(HttpServletRequest request,int itemNo) {
		ArrayList<ItemTypeDTO> list = mapper.selectTypeListAll();
		ItemDTO item = mapper.read(itemNo);
		
		for(ItemTypeDTO dto : list) {
			if(dto.getType().equals(item.getType())) {
				request.setAttribute("parentType", dto.getParentType());
				break;
			}
		}
		request.setAttribute("typeList", list);
		request.setAttribute("dto",item);
		
		return "/item/updateForm";
	}
	
	@RequestMapping("/item/createForm")
	public String create(HttpServletRequest request) {
		request.setAttribute("typeList", mapper.selectTypeListAll());
		return "/item/create";
	}


	@RequestMapping("/item/read")
	public String read(int itemNo, Model model, HttpServletRequest request) {

		ItemDTO dto = mapper.read(itemNo);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));

		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int recordPerPage = 5; //한페이지당 보여줄 레코드 갯수

		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;

		Map map = new HashMap();
		map.put("itemNo", itemNo);
		map.put("sno",sno);
		map.put("eno",eno);

		List<BoardDTO> qlist = mapper.Qlist(map);
		ArrayList<reviewDTO> rlist = mapper.rlist(map);

		int qtotal = mapper.qtotal(map);
		int rtotal = mapper.rtotal();
		System.out.println("리뷰갯수:"+rtotal);

		String qpaging = Utility.paging2(qtotal, nowPage, recordPerPage,itemNo);

		request.setAttribute("qpaging", qpaging);
		request.setAttribute("qtotal", qtotal);
		request.setAttribute("rtotal", rtotal);
		request.setAttribute("qlist", qlist);
		request.setAttribute("rlist", rlist);

		request.setAttribute("dto",dto);
		return "/item/read";
	}

	@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {

		ItemDTO dto = new ItemDTO(); 
		String keyword = ItemUtility.checkNull(request.getParameter("keyword"));
		String col = ItemUtility.checkNull(request.getParameter("col"));
		String type = request.getParameter("type");

		if (col.equals("total"))
			keyword = "";
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
		map.put("keyword", keyword);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("type", type);

		ArrayList<ItemDTO> list = mapper.list(map);
		System.out.println("개수:"+list.size());
		int total = mapper.total(map);

		String paging = ItemUtility.paging(total, nowPage, recordPerPage, col, keyword,type);


		request.setAttribute("typeList", mapper.selectTypeList(type));
		request.setAttribute("parentType", mapper.selectParentType(type));
		request.setAttribute("selectedType", type);
		request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("keyword", keyword);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);



		return "/item/list";
	}
}
