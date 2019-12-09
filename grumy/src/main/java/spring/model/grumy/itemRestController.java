package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

import spring.model.mapper.itemMapper;
import spring.model.mapper.reviewMapper;
import spring.model.review.reviewDTO;

@RestController
public class itemRestController {
	@Autowired
	private reviewMapper mapper;
	@Autowired
	private itemMapper imapper;

	
	@GetMapping("/item/reply/list/{itemNo}/{nowPage}")
	public ResponseEntity<List<reviewDTO>> getList(@PathVariable("itemNo") int itemNo,@PathVariable("nowPage") int nowPage){

		int recordPerPage = 5; //한페이지당 보여줄 레코드 갯수
		
		//디비에서 가져올 순번
		int sno = ((nowPage-1) * recordPerPage) + 1 ;
		int eno = nowPage * recordPerPage;
		Map map = new HashMap();
		map.put("sno", sno);
		map.put("eno", eno);
		map.put("itemNo", itemNo);
		
		return new ResponseEntity<List<reviewDTO>>(mapper.itemReviewlist(map),HttpStatus.OK);
		
		
	}

	@DeleteMapping("/item/delete")
	public ResponseEntity<String> remove(@RequestBody int itemNoList) {

		return imapper.delete(itemNoList) > 0
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	@PutMapping("/item/update")
	public ResponseEntity<String> update(@RequestBody int map) {
		return imapper.update(map) > 0
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	

}
