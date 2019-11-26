package spring.model.order;

public class OrderItemDTO {
	private int itemOptionNo;
	private int count;
	private String itemTitle;
	private String itemPicture;
	private int itemPrice;
	private int itemSalePrice;
	private String itemSize;
	private String itemColor;
	private int itemNo;
	private int itemCount;
	private int cartNo;
	
	public OrderItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderItemDTO(int itemOptionNo, int count, String itemTitle, String itemPicture, int itemPrice,
			int itemSalePrice, String itemSize, String itemColor, int itemNo, int itemCount, int cartNo) {
		super();
		this.itemOptionNo = itemOptionNo;
		this.count = count;
		this.itemTitle = itemTitle;
		this.itemPicture = itemPicture;
		this.itemPrice = itemPrice;
		this.itemSalePrice = itemSalePrice;
		this.itemSize = itemSize;
		this.itemColor = itemColor;
		this.itemNo = itemNo;
		this.itemCount = itemCount;
		this.cartNo = cartNo;
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

	public String getItemPicture() {
		return itemPicture;
	}

	public void setItemPicture(String itemPicture) {
		this.itemPicture = itemPicture;
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

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

}
