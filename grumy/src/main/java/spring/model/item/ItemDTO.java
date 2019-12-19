package spring.model.item;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public class ItemDTO {
	private int itemNo; 
	private String image ;
	private String title ; 
	private String description ; // 리스트 content
	private String content ; //상세페이지
	private int price ; 
	private int salePrice ;
	private String type; //카테고리
	private ArrayList<ItemOptionDTO> itemOptionList;
	private MultipartFile filenameMF ;

	public ItemDTO() {
		super();
		// TODO Auto-generated constructor stub
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

	public ArrayList<ItemOptionDTO> getItemOptionList() {
		return itemOptionList;
	}

	public void setItemOptionList(ArrayList<ItemOptionDTO> itemOptionList) {
		this.itemOptionList = itemOptionList;
	}

	public MultipartFile getFilenameMF() {
		return filenameMF;
	}

	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}

	@Override
	public String toString() {
		return "ItemDTO [itemNo=" + itemNo + ", image=" + image + ", title=" + title + ", description=" + description
				+ ", content=" + content + ", price=" + price + ", salePrice=" + salePrice + ", type=" + type
				+ ", itemOptionList=" + itemOptionList + ", filenameMF=" + filenameMF + "]";
	}


}
