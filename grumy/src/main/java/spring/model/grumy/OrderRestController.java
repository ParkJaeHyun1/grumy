package spring.model.grumy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import spring.model.mapper.OrderMapper;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;

@RestController
public class OrderRestController {
	@Autowired
	OrderMapper orderMapper;

	
	@PutMapping("/order/check")
	public ResponseEntity<String> check(@RequestBody ArrayList<OrderItemDTO>list) {
		
		ArrayList<OrderItemDTO> orderItemList = orderMapper.checkItem(list); 
		Map<Integer,OrderItemDTO> map =new HashMap();
		
		if(orderItemList.size()!=list.size())
			return new ResponseEntity<String>("fail", HttpStatus.OK);
		
		for(OrderItemDTO orderItem: orderItemList)
			map.put(orderItem.getItemOptionNo(), orderItem);
			
		for(OrderItemDTO orderItem : list) {
			if(orderItem.getCount()>map.get(orderItem.getItemOptionNo()).getCount() || orderItem.getItemPrice() != map.get(orderItem.getItemOptionNo()).getItemPrice() || orderItem.getItemSalePrice()!=map.get(orderItem.getItemOptionNo()).getItemSalePrice())
				return new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	@PutMapping("/order/insert")
	public ResponseEntity<String> insert(@RequestBody OrderDTO order) {
		
		int cnt = orderMapper.insert(order);
		return cnt>0?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/delete")
	public ResponseEntity<String> delete(@RequestBody OrderDTO order) {
		
		int cnt = orderMapper.delete(order.getOrderNo());
		return cnt>0?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/update")
	public ResponseEntity<String> update(@RequestBody OrderDTO order) {
		
		int cnt = orderMapper.update(order);
		return cnt>0?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
