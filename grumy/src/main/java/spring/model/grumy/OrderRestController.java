package spring.model.grumy;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import spring.model.cart.CartDTO;
import spring.model.mapper.OrderMapper;
import spring.model.order.OrderItemDTO;

@RestController
public class OrderRestController {
	@Autowired
	OrderMapper orderMapper;
	ObjectMapper oMapper = new ObjectMapper();
	
	@PutMapping("/order/check")
	public ResponseEntity<String> check(@RequestBody ArrayList<OrderItemDTO>list) {
		
		ArrayList<Integer> itemCount = orderMapper.checkItemCount(list); 

		System.out.println("list:"+list.size()+",result:"+itemCount.size());
		if(itemCount.size()!=list.size())
			return new ResponseEntity<String>("fail", HttpStatus.OK);

		for(int i=0;i<itemCount.size();i++) {
			if(list.get(i).getCount()>itemCount.get(i)) {
				System.out.println("번호:"+list.get(i).getItemOptionNo()+",수량:"+list.get(i).getCount()+",재고:"+itemCount.get(i));
				return new ResponseEntity<String>("fail", HttpStatus.OK);
			}else {
				System.out.println("번호:"+list.get(i).getItemOptionNo()+",수량:"+list.get(i).getCount()+",재고:"+itemCount.get(i));
			}
		}


		return new ResponseEntity<String>("success", HttpStatus.OK);

	}
}
