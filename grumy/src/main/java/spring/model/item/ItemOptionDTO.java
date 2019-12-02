package spring.model.item;

public class ItemOptionDTO {
	private int itemNo;
	private int itemOptionNo;
	private int itemCount;
	private String itemSize;
	private String itemColor;
	
	public ItemOptionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemOptionDTO(int itemNo, int itemOptionNo, int itemCount, String itemSize, String itemColor) {
		super();
		this.itemNo = itemNo;
		this.itemOptionNo = itemOptionNo;
		this.itemCount = itemCount;
		this.itemSize = itemSize;
		this.itemColor = itemColor;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public int getItemOptionNo() {
		return itemOptionNo;
	}
	public void setItemOptionNo(int itemOptionNo) {
		this.itemOptionNo = itemOptionNo;
	}
	public int getItemCount() {
		return itemCount;
	}
	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
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
