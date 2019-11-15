package spring.model.mapper;

import java.util.ArrayList;

import spring.model.cart.CartDTO;


public interface CartMapper {

	ArrayList<CartDTO> list(String userID);
}
