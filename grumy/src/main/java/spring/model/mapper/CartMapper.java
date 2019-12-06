package spring.model.mapper;

import java.util.ArrayList;
import java.util.Map;

import spring.model.cart.CartDTO;


public interface CartMapper {

	ArrayList<CartDTO> list(String id);
	int delete(ArrayList<Integer> cartNoList);
	int update(Map<String,Integer> map);
	ArrayList<Integer>  checkDuplicate(Map map);
	
	int update2(Map map);
	int insert(Map map);
}
