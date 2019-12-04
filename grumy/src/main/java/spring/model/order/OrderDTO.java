package spring.model.order;

import java.util.ArrayList;

import spring.model.item.ItemOptionDTO;

public class OrderDTO {
	private int orderNo;
	private String odate;
	private String postCode;
	private String address;
	private String detailAddress;
	private String id;
	private ArrayList<OrderItemDTO> orderItemList;
	
	public OrderDTO(int orderNo, String odate, String postCode, String address, String detailAddress, String id,
			ArrayList<OrderItemDTO> orderItemList) {
		super();
		this.orderNo = orderNo;
		this.odate = odate;
		this.postCode = postCode;
		this.address = address;
		this.detailAddress = detailAddress;
		this.id = id;
		this.orderItemList = orderItemList;
	}
	
	public OrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getOdate() {
		return odate;
	}

	public void setOdate(String odate) {
		this.odate = odate;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public ArrayList<OrderItemDTO> getOrderItemList() {
		return orderItemList;
	}

	public void setOrderItemList(ArrayList<OrderItemDTO> orderItemList) {
		this.orderItemList = orderItemList;
	}

}
 