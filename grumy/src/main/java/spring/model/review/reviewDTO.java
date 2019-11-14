package spring.model.review;

public class reviewDTO {
	private int no;
	private String id;
	private int itemNo;
	private String itemOption;
	private String content;
	private String picture;
	private String itemPicture;
	private String itemTitle;
	private String cm;
	private String kg;
	private String mysize;


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public reviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public reviewDTO(int no, String id, int itemNo, String itemOption, String content, String picture,
			String itemPicture, String itemTitle, String cm, String kg, String mysize) {
		super();
		this.no = no;
		this.id = id;
		this.itemNo = itemNo;
		this.itemOption = itemOption;
		this.content = content;
		this.picture = picture;
		this.itemPicture = itemPicture;
		this.itemTitle = itemTitle;
		this.kg = kg;
		this.cm = cm;
		this.mysize = mysize;
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

	public String getItemOption() {
		return itemOption;
	}

	public void setItemOption(String itemOption) {
		this.itemOption = itemOption;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
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

	public String getMysize() {
		return mysize;
	}

	public void setMysize(String mysize) {
		this.mysize = mysize;
	}

	public String getKg() {
		return kg;
	}

	public void setKg(String kg) {
		this.kg = kg;
	}

	public String getCm() {
		return cm;
	}

	public void setCm(String cm) {
		this.cm = cm;
	}
}
