package spring.model.order;

public class OrderDTO {
	int orderNo;
	String date;
	String postCode;
	String address;
	String detailAddress;
	String id;
	String state;
	
	public OrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderDTO(int orderNo, String date, String postCode, String address, String detailAddress, String id,
			String state) {
		super();
		this.orderNo = orderNo;
		this.date = date;
		this.postCode = postCode;
		this.address = address;
		this.detailAddress = detailAddress;
		this.id = id;
		this.state = state;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
}
 