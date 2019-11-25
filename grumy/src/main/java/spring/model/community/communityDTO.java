package spring.model.community;

import org.springframework.web.multipart.MultipartFile;

public class communityDTO {
	private int communityNo      ;
	private String id            ;
	private String content       ;
	private String itemNo        ;
	private String itemPicture   ;
	private String itemTitle     ;
	private String picture       ;
	private String filesize      ;
	private String wdate;
	private MultipartFile filenameMF ;
	private int ref;
	private int indent;
	public int getCommunityNo() {
		return communityNo;
	}

	public void setCommunityNo(int communityNo) {
		this.communityNo = communityNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
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

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public MultipartFile getFilenameMF() {
		return filenameMF;
	}

	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getIndent() {
		return indent;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}

	public int getAnsnum() {
		return ansnum;
	}

	public void setAnsnum(int ansnum) {
		this.ansnum = ansnum;
	}

	public communityDTO(int communityNo, String id, String content, String itemNo, String itemPicture, String itemTitle,
			String picture, String filesize, String wdate, MultipartFile filenameMF, int ref, int indent, int ansnum) {
		super();
		this.communityNo = communityNo;
		this.id = id;
		this.content = content;
		this.itemNo = itemNo;
		this.itemPicture = itemPicture;
		this.itemTitle = itemTitle;
		this.picture = picture;
		this.filesize = filesize;
		this.wdate = wdate;
		this.filenameMF = filenameMF;
		this.ref = ref;
		this.indent = indent;
		this.ansnum = ansnum;
	}

	private int ansnum;
	
	public communityDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
