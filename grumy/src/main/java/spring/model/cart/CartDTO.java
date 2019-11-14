package spring.model.cart;

public class CartDTO {
	private int no;
	private String id;
	private int itemNo;
	private int count;
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}
	public CartDTO(int no, String id, int itemNo, int count) {
		super();
		this.no = no;
		this.id = id;
		this.itemNo = itemNo;
		this.count = count;
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
}
