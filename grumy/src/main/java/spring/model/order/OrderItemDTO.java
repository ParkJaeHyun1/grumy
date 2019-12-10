package spring.model.order;

public class OrderItemDTO {
	private int orderItemNo;
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
	private int itemCount;
	private String state;
	private String state2;
	private int cartNo;
	
	public OrderItemDTO(int orderItemNo, int itemOptionNo, int count, String itemTitle, String itemImage, int itemPrice,
			int itemSalePrice, String itemSize, String itemColor, int itemNo, int itemCount, String state,String state2, int cartNo,String deliveryNo) {
		super();
		this.orderItemNo = orderItemNo;
		this.itemOptionNo = itemOptionNo;
		this.count = count;
		this.itemTitle = itemTitle;
		this.itemImage = itemImage;
		this.itemPrice = itemPrice;
		this.itemSalePrice = itemSalePrice;
		this.itemSize = itemSize;
		this.itemColor = itemColor;
		this.itemNo = itemNo;
		this.itemCount = itemCount;
		this.state = state;
		this.state2 = state2;
		this.cartNo = cartNo;
		this.deliveryNo = deliveryNo;
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



	public int getItemCount() {
		return itemCount;
	}



	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
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
	public String getState2() {
		return state2;
	}
	public void setState2(String state2) {
		this.state2 = state2;
	}



	@Override
	public String toString() {
		return "OrderItemDTO [orderItemNo=" + orderItemNo + ", itemOptionNo=" + itemOptionNo + ", count=" + count
				+ ", itemTitle=" + itemTitle + ", itemImage=" + itemImage + ", itemPrice=" + itemPrice
				+ ", itemSalePrice=" + itemSalePrice + ", itemSize=" + itemSize + ", itemColor=" + itemColor
				+ ", itemNo=" + itemNo + ", itemCount=" + itemCount + ", state=" + state + ", cartNo=" + cartNo + "]";
	}

	
}
