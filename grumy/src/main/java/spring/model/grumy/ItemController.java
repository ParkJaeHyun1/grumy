package spring.model.grumy;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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


	
	@GetMapping("/item/search")          
	public String search(HttpServletRequest request, HttpSession session) {
		
		String id = (String) session.getAttribute("id"); // session 저장된 값이 잇는지 없는지 확인하려고 정의
		String grade = (String) session.getAttribute("grade");
		
		
		String keyword = ItemUtility.checkNull(request.getParameter("keyword"));//검색되는 단어
		String search_type = ItemUtility.checkNull(request.getParameter("search_type")); //
		String type = request.getParameter("type");	//상품 카테고리 ex)outer,top,bottom	
		String price1 =request.getParameter("price1");
		String price2 =request.getParameter("price2");
		String orderby = request.getParameter("orderby");
		
		if(type.equals("") || type == null )
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
		map.put("price1", price1);
		map.put("price2", price2);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("type", type);
		map.put("id", session.getAttribute("id"));           	
		map.put("grade", grade);
		map.put("orderby", orderby); 

		System.out.println("keyword(검색한 단어):"+keyword);
		System.out.println("search_type(title/itemNo):"+search_type);
		System.out.println("type(outer,top):"+type);
		System.out.println("price1:"+price1);
		System.out.println("price2:"+price2);
		System.out.println("order:"+orderby);
			
		ArrayList<ItemDTO> searchlist = mapper.search(map);
		System.out.println("상품 개수:"+searchlist.size());
		
		int SearchTotal = mapper.SearchTotal(map);
		
		String paging = ItemUtility.paging(SearchTotal, nowPage, recordPerPage, search_type, keyword,type);
		
		request.setAttribute("typeList", mapper.selectTypeListAll());
		request.setAttribute("searchlist",searchlist);
		request.setAttribute("search_type",search_type);
		request.setAttribute("keyword",keyword);
		request.setAttribute("type",type);
		request.setAttribute("price1",price1);
		request.setAttribute("price2",price2);
		request.setAttribute("nowPage",nowPage);
		request.setAttribute("paging",paging);   
		request.setAttribute("SearchTotal",SearchTotal);
		request.setAttribute("orderby", orderby);

		return "/item/search";
	}



	@RequestMapping("/item/best")
	public String listBest(HttpServletRequest request) {
		

		ItemDTO dto = new ItemDTO(); 
		
		Map map = new HashMap();

		ArrayList<ItemDTO> best = mapper.listBest(map);
		
		
		System.out.println("개수:"+best.size());
	
		request.setAttribute("best", best);
		
		return "/item/best";
	}
	
	
	
@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {

		ItemDTO dto = new ItemDTO(); 
		String keyword = ItemUtility.checkNull(request.getParameter("keyword"));
		String col = ItemUtility.checkNull(request.getParameter("col"));
		String type = request.getParameter("type");
		String orderby = request.getParameter("orderby");

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
		map.put("orderby", orderby); 
		

		System.out.println("orderby:"+orderby);
		ArrayList<ItemDTO> list = mapper.list(map);

		
		System.out.println("개수:"+list.size());
		int total = mapper.total(map);     
		
		String paging = ItemUtility.paging(total, nowPage, recordPerPage, col, keyword,type);
		int rtotal = mapper.rtotal(map);
        
		request.setAttribute("typeList", mapper.selectTypeList(type));
		request.setAttribute("parentType", mapper.selectParentType(type));
		request.setAttribute("selectedType", type);
		request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("keyword", keyword);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("total", total);
		request.setAttribute("orderby", orderby);
		request.setAttribute("rtotal", rtotal);


		return "/item/list";
	}

	//검색페이지에서 삭제
	@RequestMapping("/item/deleteSearch")
	public String deleteSearch(HttpServletRequest request, int itemNo) throws UnsupportedEncodingException {
			
		
		String keyword = request.getParameter("keyword");//검색되는 단어
		String search_type = ItemUtility.checkNull(request.getParameter("search_type")); //
		String type = request.getParameter("type");	//상품 카테고리 ex)outer,top,bottom	
		String price1 =request.getParameter("price1");
		String price2 =request.getParameter("price2");
		String orderby = request.getParameter("orderby");
                     System.out.println(keyword);
			if(itemService.delete(itemNo)) {

				request.setAttribute("search_type",search_type);
				request.setAttribute("keyword",keyword);
				request.setAttribute("type",type);  
				request.setAttribute("orderby",orderby);
				request.setAttribute("price1",price1);
				request.setAttribute("price2",price2);
				
				return "redirect:/item/search?type="+type+"&search_type="+search_type+"&keyword="+ URLEncoder.encode(keyword, "UTF-8") +"&orderby="+orderby;
			              
			}
			return "/item/error";
		}

	//리스트페이지에서 삭제
	@RequestMapping("/item/deleteList")
	public String deleteList(int itemNo, String type) {
		System.out.println("개새 꺄 아,아ㅏㅇ아");
		if(itemService.delete(itemNo))
			return "redirect:/item/list?type="+type;
		return "/item/error";
	}




	  @RequestMapping("/item/create")
	   public String create(ItemDTO dto, HttpServletRequest request,String[] itemColorList,String[] itemSizeList,int[] itemCountList) throws UnsupportedEncodingException {
	      ArrayList<ItemOptionDTO> itemOptionList = new ArrayList<ItemOptionDTO>();

	      
	      for(int i=0;i<itemColorList.length;i++) {
	         itemOptionList.add(new ItemOptionDTO(0,0,itemCountList[i],itemSizeList[i],itemColorList[i]));
	      }
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
			System.out.println("씨발아:"+itemColorList.length);
			dto.setItemOptionList(itemOptionList);

			if (dto.getFilenameMF().getSize() > 0) 
				dto.setImage(Utility.saveFileSpring(dto.getFilenameMF(), request.getRealPath("/images")));

			if(itemService.update(dto))
				return "redirect:/item/list?type="+URLEncoder.encode(dto.getType(), "UTF-8");
			else
				return "redirect:/item/error";   //인서트실패시 에러페이지로이동해야되는데 에러페이지 몬지모를라서 일단 해놈
		}

	
	@RequestMapping("/item/updateForm")
	public String updateForm(HttpServletRequest request,int itemNo, HttpSession session) {
		
		
		if(session.getAttribute("id")==null|| session.getAttribute("grade")!="A") {
			return "/item/urlError";
		}           
		
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
	public String create(HttpServletRequest request, HttpSession session) {
		if(session.getAttribute("id")==null || session.getAttribute("grade")!="A") {
			return "/item/urlError";                 
		}
		
		request.setAttribute("typeList", mapper.selectTypeListAll());
		return "/item/create";       
	}


	@RequestMapping("/item/read")
	public String read(int itemNo, Model model, HttpServletRequest request) {

		ItemDTO dto = mapper.read(itemNo);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));

		int nowPager = 1;
		if(request.getParameter("nowPager")!= null){
			nowPager = Integer.parseInt(request.getParameter("nowPager"));
		} 
		
		int nowPage = 1;
		if(request.getParameter("nowPage")!= null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		int recordPerPage = 5; //한페이지당 보여줄 레코드 갯수
		int recordPerPager = 5; //한페이지당 보여줄 레코드 갯수

		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;
		int snor = ((nowPager-1) * recordPerPager) + 1 ;
		int enor= nowPager * recordPerPager;
	
		Map map = new HashMap();
		map.put("itemNo", itemNo);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("snor",snor);
		map.put("enor",enor);

		List<BoardDTO> qlist = mapper.Qlist(map);
		ArrayList<reviewDTO> rlist = mapper.rlist(map);

		int qtotal = mapper.qtotal(map);
		int rtotal = mapper.rtotal(map);
		System.out.println("리뷰갯수:"+rtotal);

		String qpaging = Utility.paging2(qtotal, nowPage, recordPerPage,itemNo);
		String paging = Utility.mypaging3(rtotal, nowPager, recordPerPager, itemNo);
		
		request.setAttribute("qpaging", qpaging);
		request.setAttribute("paging", paging);
		request.setAttribute("qtotal", qtotal);
		request.setAttribute("rtotal", rtotal);
		request.setAttribute("qlist", qlist);
		request.setAttribute("rlist", rlist);
		request.setAttribute("nowPager", nowPager);
		request.setAttribute("recordPerPager", recordPerPager);

		request.setAttribute("dto",dto);
		return "/item/read";
	}

	
}
