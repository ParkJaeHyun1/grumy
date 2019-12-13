package spring.model.order;

import java.util.ArrayList;

import spring.model.item.ItemOptionDTO;

public class OrderDTO {
	private String orderNo;
	private String odate;
	private String id;
	private int totalPrice;
	private int salePrice;
	private String name;
	private String rname;
	private String postcode;
	private String address;
	private String detailaddress;
	private String rphone;
	private String remail;
	private String rmsg;
	private String paymentType;
	private String imagineAccount;
	private String imagineBank;
	private String imagineDate;
	private String state;
	private ArrayList<OrderItemDTO> orderItemList;
	
	
	
	
	public OrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderDTO(String orderNo, String odate, String id, int totalPrice, int salePrice, String name, String rname,
			String postcode, String address, String detailaddress, String rphone, String remail, String rmsg,
			String paymentType, String imagineAccount, String imagineBank, String imagineDate,
			ArrayList<OrderItemDTO> orderItemList,String state) {
		super();
		this.orderNo = orderNo;
		this.odate = odate;
		this.id = id;
		this.totalPrice = totalPrice;
		this.salePrice = salePrice;
		this.name = name;
		this.rname = rname;
		this.postcode = postcode;
		this.address = address;
		this.detailaddress = detailaddress;
		this.rphone = rphone;
		this.remail = remail;
		this.rmsg = rmsg;
		this.paymentType = paymentType;
		this.imagineAccount = imagineAccount;
		this.imagineBank = imagineBank;
		this.imagineDate = imagineDate;
		this.orderItemList = orderItemList;
		this.state = state;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public String getName() {
		return name;
	}
	public void setName(String rname) {
		this.name = name;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public String getRphone() {
		return rphone;
	}
	public void setRphone(String rphone) {
		this.rphone = rphone;
	}
	public String getRemail() {
		return remail;
	}
	public void setRemail(String remail) {
		this.remail = remail;
	}
	public String getRmsg() {
		return rmsg;
	}
	public void setRmsg(String rmsg) {
		this.rmsg = rmsg;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getImagineAccount() {
		return imagineAccount;
	}
	public void setImagineAccount(String imagineAccount) {
		this.imagineAccount = imagineAccount;
	}
	public String getImagineBank() {
		return imagineBank;
	}
	public void setImagineBank(String imagineBank) {
		this.imagineBank = imagineBank;
	}
	public String getImagineDate() {
		return imagineDate;
	}
	public void setImagineDate(String imagineDate) {
		this.imagineDate = imagineDate;
	}
	public ArrayList<OrderItemDTO> getOrderItemList() {
		return orderItemList;
	}
	public void setOrderItemList(ArrayList<OrderItemDTO> orderItemList) {
		this.orderItemList = orderItemList;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", odate=" + odate + ", id=" + id + ", totalPrice=" + totalPrice
				+ ", salePrice=" + salePrice + ", rname=" + rname + ", postcode=" + postcode + ", address=" + address
				+ ", detailaddress=" + detailaddress + ", rphone=" + rphone + ", remail=" + remail + ", rmsg=" + rmsg
				+ ", paymentType=" + paymentType + ", imagineAccount=" + imagineAccount + ", imagineBank=" + imagineBank
				+ ", imagineDate=" + imagineDate + ", state=" + state + "orderItemList="+orderItemList+"]";
	}
	
	
	
}
 