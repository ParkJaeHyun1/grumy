package spring.model.order;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.mapper.itemMapper;

@Service
public class OrderService {
	@Autowired
	itemMapper itemMapper;
	
	public boolean decreaseItemCount(ArrayList<OrderItemDTO> orderItemList) {
		int cnt=0;

		for(OrderItemDTO orderItem: orderItemList) 
			cnt += itemMapper.decreaseItemCount(orderItem);
		
		return cnt==orderItemList.size()?true:false;
	}
	
}
