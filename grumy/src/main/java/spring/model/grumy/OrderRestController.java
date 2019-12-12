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
import spring.model.order.OrderService;

@RestController
public class OrderRestController {
	@Autowired
	OrderMapper orderMapper;
	@Autowired
	OrderService orderService;
	
	@PutMapping("/order/check")
	public ResponseEntity<String> check(@RequestBody ArrayList<OrderItemDTO>list) {

		ArrayList<OrderItemDTO> orderItemList = orderMapper.checkItem(list); 
		Map<Integer,OrderItemDTO> map =new HashMap();
	
		if(orderItemList.size()!=list.size())								//구매목록리스트와 아이템에서 select한 제품의 개수가 다르면 (즉 관리자가 판매중단해서 table에서 사라진 구매목록이 있다면)
			return new ResponseEntity<String>("fail", HttpStatus.OK);

		for(OrderItemDTO orderItem: orderItemList)
			map.put(orderItem.getItemOptionNo(), orderItem);

		for(OrderItemDTO orderItem : list) 									// 구매목록에있는 제품정보와 실제 제품정보가 다를경우
			if(orderItem.getItemPrice() != map.get(orderItem.getItemOptionNo()).getItemPrice() || orderItem.getItemSalePrice()!=map.get(orderItem.getItemOptionNo()).getItemSalePrice()) {
				return new ResponseEntity<String>("fail", HttpStatus.OK);
		}

		boolean bool =orderService.decreaseItemCount(list);

		if(!bool) 							//수량 감소시키는 메소드라 이조건문을 위로올리고 만약 그 밑에쪽에서 fail떠서 거래불가시키면 다시 감소시킨거 증가시켜야되서 맨밑에넣음
			return new ResponseEntity<String>("fail", HttpStatus.OK);

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	@PutMapping("/order/insert")
	public ResponseEntity<String> insert(@RequestBody OrderDTO order) {
		int cnt = orderMapper.insert(order);
		int cnt2 = 0;
		
		for(OrderItemDTO orderItem : order.getOrderItemList()) {
			orderItem.setOrderNo(order.getOrderNo());
			cnt2 += orderMapper.insertItem(orderItem);
		}
		
		return cnt+cnt2==order.getOrderItemList().size()+1?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/delete")
	public ResponseEntity<String> delete(@RequestBody OrderDTO order) {
		
		int cnt2 = orderMapper.deleteItem(order.getOrderNo());
		int cnt = orderMapper.delete(order.getOrderNo());
		
		return cnt+cnt2>0?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/update")
	public ResponseEntity<String> update(@RequestBody OrderDTO order) {
		Map map = new HashMap();
		map.put("state", order.getState());
		map.put("orderNo", order.getOrderNo());
		
		int cnt = orderMapper.update(order);
		int cnt2= orderMapper.updateItemState(map);
		
		return cnt+cnt2==order.getOrderItemList().size()+1?new ResponseEntity<String>("success", HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
