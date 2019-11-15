package spring.model.cart;

public class CartDTO {
	private int no;
	private String id;
	private int itemNo;
	private int count;
	private String itemPicture;
	private String itemTitle;
	private int itemPrice;
	private String itemSize;
	private String itemColor;
	
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}


	public CartDTO(int no, String id, int itemNo, int count, String itemPicture, String itemTitle, int itemPrice,
			String itemSize, String itemColor) {
		super();
		this.no = no;
		this.id = id;
		this.itemNo = itemNo;
		this.count = count;
		this.itemPicture = itemPicture;
		this.itemTitle = itemTitle;
		this.itemPrice = itemPrice;
		this.itemSize = itemSize;
		this.itemColor = itemColor;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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
