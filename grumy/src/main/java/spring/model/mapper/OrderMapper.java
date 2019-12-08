package spring.model.mapper;

import java.util.ArrayList;
import spring.model.order.OrderItemDTO;


public interface OrderMapper {

	ArrayList<OrderItemDTO> itemOptionList(ArrayList<Integer> itemOptionNoList);
	ArrayList<Integer> checkItemCount(ArrayList<OrderItemDTO> list);
}
