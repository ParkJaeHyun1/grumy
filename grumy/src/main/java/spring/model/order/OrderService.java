package spring.model.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import spring.model.mapper.OrderMapper;
import spring.model.mapper.itemMapper;

@Service
public class OrderService {
	@Autowired
	itemMapper itemMapper;
	@Autowired 
	OrderMapper orderMapper;
	
	public boolean decreaseItemCount(ArrayList<OrderItemDTO> orderItemList) {
		int cnt=0;

		for(OrderItemDTO orderItem: orderItemList) 
			cnt += itemMapper.decreaseItemCount(orderItem); 
		
		return cnt==orderItemList.size()?true:false;
	}
	
	public boolean insert(OrderDTO order) {
		int cnt = orderMapper.insert(order);
		int cnt2 = 0;

		for(OrderItemDTO orderItem : order.getOrderItemList()) {
			orderItem.setOrderNo(order.getOrderNo());
			cnt2 += orderMapper.insertItem(orderItem);
		}
		
		return cnt+cnt2==order.getOrderItemList().size()+1? true:false;
	}
	
	public boolean delete(String orderNo) {
		int cnt2 = orderMapper.deleteItem(orderNo);
		int cnt = orderMapper.delete(orderNo);

		return cnt+cnt2>0?true:false;
	}
	
	public boolean update(OrderDTO order) {
		Map map = new HashMap();
		map.put("state", order.getState());
		map.put("orderNo", order.getOrderNo());

		int cnt = orderMapper.update(order);
		int cnt2= orderMapper.updateItemState(map);

		return cnt+cnt2==order.getOrderItemList().size()+1?true:false;
	}
}
