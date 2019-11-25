package spring.model.grumy;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

	@RequestMapping("/order/order")
	public String list(HttpServletRequest request, HttpSession session, int[] cartNo) {
		System.out.println("1111");
		for(int i: cartNo)
			System.out.println("¹øÈ£:"+ i);
		return "/order/order";
	}
}
