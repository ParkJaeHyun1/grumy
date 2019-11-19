package spring.model.grumy;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		System.out.println("출력:"+cartNoList);

		return mapper.delete(cartNoList) > 0
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
}
