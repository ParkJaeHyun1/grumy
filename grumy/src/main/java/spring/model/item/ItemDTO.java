package spring.model.item;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

public class ItemDTO {
	private int itemNo; 
	private String image ;
	private String title ; 
	private String description ; // 리스트 content
	private String content ; //상세페이지
	private int price ; 
	private int salePrice ;
	private String type; //카테고리
	//itemOption table
	private int itemOptionNo;
	private ArrayList<String> colorList;

	private Map<String, ArrayList<String>> sizeMap;
	private Map<String,Integer> countMap;
	public ItemDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ItemDTO(int itemNo, String image, String title, String description, String content, int price, int salePrice,
			String type, int itemOptionNo, ArrayList<String> colorList, Map<String, ArrayList<String>> sizeMap,
			Map<String, Integer> countMap) {
		super();
		this.itemNo = itemNo;
		this.image = image;
		this.title = title;
		this.description = description;
		this.content = content;
		this.price = price;
		this.salePrice = salePrice;
		this.type = type;
		this.itemOptionNo = itemOptionNo;
		this.colorList = colorList;
		this.sizeMap = sizeMap;
		this.countMap = countMap;
	}
	@Override
	public String toString() {
		return "ItemDTO [itemNo=" + itemNo + ", image=" + image + ", title=" + title + ", description=" + description
				+ ", content=" + content + ", price=" + price + ", salePrice=" + salePrice + ", type=" + type
				+ ", itemOptionNo=" + itemOptionNo + ", colorList=" + colorList + ", sizeMap=" + sizeMap + ", countMap="
				+ countMap + "]";
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getItemOptionNo() {
		return itemOptionNo;
	}
	public void setItemOptionNo(int itemOptionNo) {
		this.itemOptionNo = itemOptionNo;
	}
	public ArrayList<String> getColorList() {
		return colorList;
	}
	public void setColorList(ArrayList<String> colorList) {
		this.colorList = colorList;
	}
	public Map<String, ArrayList<String>> getSizeMap() {
		return sizeMap;
	}
	public void setSizeMap(Map<String, ArrayList<String>> sizeMap) {
		this.sizeMap = sizeMap;
	}
	public Map<String, Integer> getCountMap() {
		return countMap;
	}
	public void setCountMap(Map<String, Integer> countMap) {
		this.countMap = countMap;
	}
	

}
