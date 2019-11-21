package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.item.ItemDTO;
import spring.model.mapper.itemMapper;
import spring.model.utility.ItemUtility;

@Controller
public class ItemController {

	@Autowired
	private itemMapper mapper;

	@RequestMapping("/item/read")
	public String read(int itemNo, Model model, HttpServletRequest request) {
		
		ItemDTO dto = mapper.read(itemNo);
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br>"));
		model.addAttribute("dto", dto);
		
		Map<String, ArrayList<String>> sizeMap =  new HashMap<String, ArrayList<String>>();
		Map<String,Integer> countMap = new HashMap<String,Integer>();
		Map<String, String> map = new HashMap<String, String>();	
		map.put("itemNo", String.valueOf(itemNo));
		System.out.println("itemNo:"+itemNo);
		ArrayList<String> colorList = mapper.color(map);
				
		for(int i=0;i<colorList.size();i++) {
			map.put("color", colorList.get(i));
			System.out.println("color:"+colorList.get(i));
			ArrayList<String> sizeList = mapper.size(map);
			sizeMap.put(colorList.get(i), sizeList);
			
			for(int j=0;j<sizeList.size();j++) {
				map.put("itemSize",sizeList.get(j));
				System.out.println("size:"+sizeList.get(j));
				int count = mapper.count(map);
				countMap.put(colorList.get(i)+"/"+sizeList.get(j), (Integer)count);
			}
		}
		dto.setColorList(colorList);
		dto.setSizeMap(sizeMap);
		dto.setCountMap(countMap);
		System.out.println("으악:"+dto.getColorList().size());
		request.setAttribute("dto",dto);
		return "/item/read";
	}

	@RequestMapping("/item/list")
	public String list(HttpServletRequest request) {
		
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
		System.out.println("페이지:"+nowPage);
		System.out.println("sno:"+sno);
		System.out.println("eno:"+eno);
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno",sno);
		map.put("eno",eno);
		map.put("type", type);
		
		ArrayList<ItemDTO> list = mapper.list(map);
		System.out.println("사이즈:"+list.size());
//		for (ItemDTO item : list) {
//			String[] colors = item.getColor().split("/");
//			item.setColorList(colors);
//		}
		
		int total = mapper.total(map);
		
		String paging = ItemUtility.paging(total, nowPage, recordPerPage, col, word,type);
		
		if (type.equals("shoesbag"))
			titleType = "shoes/bag";
		titleType = type.toUpperCase();
		
		request.setAttribute("title", titleType);
		request.setAttribute("type", type);
		request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		
		
		
		return "/item/list";
	}
}
