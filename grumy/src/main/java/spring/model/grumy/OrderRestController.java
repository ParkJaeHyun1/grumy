package spring.model.grumy;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import spring.model.mapper.MemberMapper;
import spring.model.mapper.OrderMapper;
import spring.model.order.OrderDTO;
import spring.model.order.OrderItemDTO;
import spring.model.order.OrderService;

@RestController
public class OrderRestController {
	@Autowired
	OrderMapper orderMapper;
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	OrderService orderService;

	@PutMapping("/order/check")
	public ResponseEntity<String> check(@RequestBody ArrayList<OrderItemDTO>list) {

		ArrayList<OrderItemDTO> orderItemList = orderMapper.checkItem(list); 
		Map<Integer,OrderItemDTO> map =new HashMap();

		if(orderItemList.size()!=list.size())								//援щℓ紐⑸줉由ъ뒪�듃�� �븘�씠�뀥�뿉�꽌 select�븳 �젣�뭹�쓽 媛쒖닔媛� �떎瑜대㈃ (利� 愿�由ъ옄媛� �뙋留ㅼ쨷�떒�빐�꽌 table�뿉�꽌 �궗�씪吏� 援щℓ紐⑸줉�씠 �엳�떎硫�)
			return new ResponseEntity<String>("fail", HttpStatus.OK);

		for(OrderItemDTO orderItem: orderItemList)
			map.put(orderItem.getItemOptionNo(), orderItem);

		for(OrderItemDTO orderItem : list) 									// 援щℓ紐⑸줉�뿉�엳�뒗 �젣�뭹�젙蹂댁� �떎�젣 �젣�뭹�젙蹂닿� �떎瑜쇨꼍�슦
			if(orderItem.getItemPrice() != map.get(orderItem.getItemOptionNo()).getItemPrice() || orderItem.getItemSalePrice()!=map.get(orderItem.getItemOptionNo()).getItemSalePrice()) {
				return new ResponseEntity<String>("fail", HttpStatus.OK);
			}

		boolean bool =orderService.decreaseItemCount(list);

		if(!bool) 							//�닔�웾 媛먯냼�떆�궎�뒗 硫붿냼�뱶�씪 �씠議곌굔臾몄쓣 �쐞濡쒖삱由ш퀬 留뚯빟 洹� 諛묒뿉履쎌뿉�꽌 fail�뼚�꽌 嫄곕옒遺덇��떆�궎硫� �떎�떆 媛먯냼�떆�궓嫄� 利앷��떆耳쒖빞�릺�꽌 留⑤컩�뿉�꽔�쓬
			return new ResponseEntity<String>("fail", HttpStatus.OK);

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	@PutMapping("/order/insert")
	public ResponseEntity<String> insert(@RequestBody OrderDTO order) {
		int cnt = orderMapper.insert(order);
		int cnt2 = 0;

		for(OrderItemDTO orderItem : order.getOrderItemList()) {
			orderItem.setOrderNo(order.getOrderNo());
			cnt2 += orderMapper.insertItem(orderItem);
		}

		return cnt+cnt2==order.getOrderItemList().size()+1?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/delete")
	public ResponseEntity<String> delete(@RequestBody OrderDTO order) {

		int cnt2 = orderMapper.deleteItem(order.getOrderNo());
		int cnt = orderMapper.delete(order.getOrderNo());

		return cnt+cnt2>0?new ResponseEntity<String>(order.getOrderNo(), HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/update")
	public ResponseEntity<String> update(@RequestBody OrderDTO order) {
		Map map = new HashMap();
		map.put("state", order.getState());
		map.put("orderNo", order.getOrderNo());

		int cnt = orderMapper.update(order);
		int cnt2= orderMapper.updateItemState(map);

		return cnt+cnt2==order.getOrderItemList().size()+1?new ResponseEntity<String>("success", HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/decreasePoint")
	public ResponseEntity<String> decreasePoint(@RequestBody Map map) {
		int cnt = memberMapper.decreasePoint(map);
		return cnt>0?new ResponseEntity<String>("success", HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@PutMapping("/order/increasePoint")
	public ResponseEntity<String> increasePoint(@RequestBody Map map) {
		int cnt = memberMapper.increasePoint(map);
		return cnt>0?new ResponseEntity<String>("success", HttpStatus.OK):new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
