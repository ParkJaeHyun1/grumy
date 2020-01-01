package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.item.ItemDTO;
import spring.model.item.ItemService;
import spring.model.mapper.itemMapper;
import spring.model.utility.ItemUtility;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private itemMapper mapper;   
	@Autowired
	private ItemService itemService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale, Model model) {
		
		ItemDTO dto = new ItemDTO(); 

		Map map = new HashMap();

		ArrayList<ItemDTO> listnew = mapper.listNew(map);
		ArrayList<ItemDTO> listbest = mapper.listBest(map);
		
		System.out.println("개수:"+listnew.size());
		System.out.println("개수:"+listbest.size());

		request.setAttribute("listnew", listnew);
		request.setAttribute("listbest", listbest);
		
		
		return "/home";
	}
	
	//main페이지에서 삭제
			@RequestMapping("/item/deleteMain")
			public String deleteMain(int itemNo) {
		
				if(itemService.delete(itemNo))
					
					return "redirect:/";
				return "/item/error";
			}
	            
}
