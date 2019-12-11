package spring.model.mapper;

import java.util.ArrayList;

import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;


public interface OrderMapper {
	ArrayList<OrderItemDTO> checkItem(ArrayList<OrderItemDTO> list);
	int insert(OrderDTO order);
	int delete(String orderNo);
}
