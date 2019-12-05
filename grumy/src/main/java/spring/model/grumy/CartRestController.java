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
import org.springframework.web.bind.annotation.RestController;

import spring.model.mapper.CartMapper;

@RestController
public class CartRestController {

	@Autowired
	private CartMapper mapper;
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
}
