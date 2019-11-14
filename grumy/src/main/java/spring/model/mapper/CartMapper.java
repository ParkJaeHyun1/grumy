package spring.model.mapper;

import spring.model.cart.CartDTO;


public interface CartMapper {

	CartDTO list(String userID);
}
