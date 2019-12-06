 package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.request.SessionScope;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import spring.model.cart.CartDTO;
import spring.model.mapper.CartMapper;

@RestController
public class CartRestController {

	@Autowired
	private CartMapper mapper;
	ObjectMapper oMapper = new ObjectMapper();

	@DeleteMapping("/cart/delete")
	public ResponseEntity<String> remove(@RequestBody ArrayList<Integer> cartNoList) {

		return mapper.delete(cartNoList) > 0
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	@PutMapping("/cart/update")
	public ResponseEntity<String> update(@RequestBody Map<String, Integer> map) {
		return mapper.update(map) > 0
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	

	@PutMapping("/cart/insert")
	public ResponseEntity<String> insert(@RequestBody Map map) {
		int cnt=0;
		
		ArrayList<CartDTO> updateList = oMapper.convertValue(map.get("updateList"), new TypeReference<ArrayList<CartDTO>>() {});	// 맵에서 가져와서 arrayList로 형변환할때 스프링 4.0이하에서 안되는 버그가있어서 씀
		ArrayList<CartDTO> insertList = oMapper.convertValue(map.get("insertList"), new TypeReference<ArrayList<CartDTO>>() {});
		
		for(CartDTO dto:updateList){
			 map.put("dto", dto);
			 cnt += mapper.update2(map);
		}
		for(CartDTO dto: insertList) {
			 map.put("dto", dto);
			 cnt += mapper.insert(map);
		}
		
		return cnt == (updateList.size()+insertList.size())
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}

	@PutMapping("/cart/checkDuplicate")
	public ResponseEntity<String> checkDuplicate(@RequestBody Map map) {
		ArrayList<CartDTO> list = oMapper.convertValue(map.get("list"), new TypeReference<ArrayList<CartDTO>>() {});
//		ArrayList<CartDTO> list = (ArrayList<CartDTO>) map.get("list");
		ArrayList<Integer> duplicateList  = mapper.checkDuplicate(map);   
		String res = "";         
		
		if(duplicateList.size()>0) {
			for(int i:duplicateList)
				res += (i+"/");       
		}

		return duplicateList.size() > 0
				? new ResponseEntity<String>(res, HttpStatus.OK)
						:(duplicateList.size()==0?new ResponseEntity<String>("noDuplicate",HttpStatus.OK):new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR)) ;

	}
}
