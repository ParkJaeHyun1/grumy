package spring.model.cart;

public class CartDTO {
	private int cartNo;
	private String id;
	private int itemOptionNo;
	private int itemNo;
	private int count;
	private String itemPicture;
	private int itemSalePrice;
	private String itemTitle;
	private int itemPrice;
	private String itemSize;
	private String itemColor;
	
	
	
	public CartDTO(int cartNo, String id, int itemOptionNo, int itemNo, int count, String itemPicture,
			int itemSalePrice, String itemTitle, int itemPrice, String itemSize, String itemColor) {
		super();
		this.cartNo = cartNo;
		this.id = id;
		this.itemOptionNo = itemOptionNo;
		this.itemNo = itemNo;
		this.count = count;
		this.itemPicture = itemPicture;
		this.itemSalePrice = itemSalePrice;
		this.itemTitle = itemTitle;
		this.itemPrice = itemPrice;
		this.itemSize = itemSize;
		this.itemColor = itemColor;
	}
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getItemOptionNo() {
		return itemOptionNo;
	}
	public void setItemOptionNo(int itemOptionNo) {
		this.itemOptionNo = itemOptionNo;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getItemPicture() {
		return itemPicture;
	}
	public void setItemPicture(String itemPicture) {
		this.itemPicture = itemPicture;
	}
	public int getItemSalePrice() {
		return itemSalePrice;
	}
	public void setItemSalePrice(int itemSalePrice) {
		this.itemSalePrice = itemSalePrice;
	}
	public String getItemTitle() {
		return itemTitle;
	}
	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
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
	

}
