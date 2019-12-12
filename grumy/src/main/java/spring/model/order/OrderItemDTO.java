package spring.model.order;

public class OrderItemDTO {
	private int orderItemNo;
	private String orderNo;
	private int itemOptionNo;
	private int count;
	private String deliveryNo;
	private String itemTitle;
	private String itemImage;
	private int itemPrice;
	private int itemSalePrice;
	private String itemSize;
	private String itemColor;
	private int itemNo;
	private String state;
	private int cartNo;


	public String getOrderNo() {
		return orderNo;
	}



	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}



	public String getDeliveryNo() {
		return deliveryNo;
	}



	public void setDeliveryNo(String deliveryNo) {
		this.deliveryNo = deliveryNo;
	}



	public OrderItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getOrderItemNo() {
		return orderItemNo;
	}



	public void setOrderItemNo(int orderItemNo) {
		this.orderItemNo = orderItemNo;
	}



	public int getItemOptionNo() {
		return itemOptionNo;
	}



	public void setItemOptionNo(int itemOptionNo) {
		this.itemOptionNo = itemOptionNo;
	}



	public int getCount() {
		return count;
	}



	public void setCount(int count) {
		this.count = count;
	}



	public String getItemTitle() {
		return itemTitle;
	}



	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}



	public String getItemImage() {
		return itemImage;
	}



	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}



	public int getItemPrice() {
		return itemPrice;
	}



	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}



	public int getItemSalePrice() {
		return itemSalePrice;
	}



	public void setItemSalePrice(int itemSalePrice) {
		this.itemSalePrice = itemSalePrice;
	}



	public String getItemSize() {
		return itemSize;
	}



	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}



	public String getItemColor() {
		return itemColor;
	}



	public void setItemColor(String itemColor) {
		this.itemColor = itemColor;
	}



	public int getItemNo() {
		return itemNo;
	}



	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	@Override
	public String toString() {
		return "OrderItemDTO [orderItemNo=" + orderItemNo + ", itemOptionNo=" + itemOptionNo + ", count=" + count
				+ ", itemTitle=" + itemTitle + ", itemImage=" + itemImage + ", itemPrice=" + itemPrice
				+ ", itemSalePrice=" + itemSalePrice + ", itemSize=" + itemSize + ", itemColor=" + itemColor
				+ ", itemNo=" + itemNo  + ", state=" + state + ", cartNo=" + cartNo + "]";
	}

	
}
