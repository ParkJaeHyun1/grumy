package spring.model.order;

import java.util.ArrayList;

import spring.model.item.ItemOptionDTO;

public class OrderDTO {
	private String orderNo;
	private String odate;
	private String postCode;
	private String address;
	private String detailAddress;
	private String id;
	private String packageno;	
	private ArrayList<OrderItemDTO> orderItemList;
	
	public OrderDTO(String orderNo, String odate, String postCode, String address, String detailAddress, String id, String packageno,
			ArrayList<OrderItemDTO> orderItemList) {
		super();
		this.orderNo = orderNo;
		this.odate = odate;
		this.postCode = postCode;
		this.address = address;
		this.detailAddress = detailAddress;
		this.id = id;
		this.packageno = packageno;
		this.orderItemList = orderItemList;
	}
	
	public OrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getPackageNo() {
		return packageno;
	}
	
	public void setPackageNo(String packageno) {
		this.packageno = packageno;
	}
	
	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
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
 