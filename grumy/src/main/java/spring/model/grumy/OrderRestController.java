package spring.model.grumy;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderRestController {
	@PutMapping("/order/check")
	public ResponseEntity<String> check(@RequestBody Map map) {
		int cnt=0;
		

		
		return cnt == 0
				? new ResponseEntity<String>("success", HttpStatus.OK)
						: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
}
