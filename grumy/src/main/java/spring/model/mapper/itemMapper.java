package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.item.ItemDTO;
import spring.model.order.OrderItemDTO;
import spring.model.review.reviewDTO;


public interface itemMapper {
	ArrayList<ItemDTO> list(Map<String, String> map);

	ItemDTO read(int no);
	ArrayList<String> color(Map<String, String> map);
	ArrayList<String> subtype(Map<String, String> map);
	ArrayList<String> size(Map<String, String> map);
	int count(Map<String, String> map);
	int total(Map map);
	int delete(int itemNo);
	int deleteOption(int itemNo);
	int update(int itemOptionNo);
	int create(ItemDTO dto);
	ArrayList<OrderItemDTO> itemOptionList(ArrayList<Integer> itemOptionNoList);

	int decreaseItemCount(OrderItemDTO orderItem);
	int increaseItemCount(OrderItemDTO orderItem);

	

}
