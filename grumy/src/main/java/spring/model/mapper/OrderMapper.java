package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;


public interface OrderMapper {
	ArrayList<OrderItemDTO> checkItem(ArrayList<OrderItemDTO> list);
	int insert(OrderDTO order);
	int delete(String orderNo);
	int update(OrderDTO order);
	
	int updateItemState(Map map);
	int insertItem(OrderItemDTO orderItem);
	int deleteItem(String orderNo);
}
