package spring.model.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import spring.model.board.BoardDTO;
import spring.model.item.ItemDTO;
import spring.model.item.ItemOptionDTO;
import spring.model.item.ItemTypeDTO;
import spring.model.order.OrderItemDTO;
import spring.model.review.reviewDTO;


public interface itemMapper {
	ArrayList<ItemDTO> list(Map<String, String> map);
	ArrayList<ItemDTO> search(Map<String, String> map);

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
	String selectParentType(String type);
	ArrayList<ItemTypeDTO> selectTypeList(String type);
	ArrayList<ItemTypeDTO> selectTypeListAll();
	int decreaseItemCount(OrderItemDTO orderItem);
	int increaseItemCount(OrderItemDTO orderItem);
	List<BoardDTO> Qlist(Map map);
	int qtotal(Map map);
	int insertItem(ItemDTO dto);
	int insertItemOption(ItemOptionDTO dto);
	ArrayList<ItemTypeDTO> AllParentType();
	int updateItem(ItemDTO dto);
	ArrayList<reviewDTO> rlist(Map map);
	int rtotal(Map map);
	int SearchTotal(Map map);
	
	

}
