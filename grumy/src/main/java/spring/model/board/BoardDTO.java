package spring.model.board;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO {
	private int board_no;
	private String id;
	private String content;
	private String itemno;
	private String wdate;
	private int ref;
	private int indent;
	private char lev;
	private String subject;
	private String writer;
	private String check_read;
	private String category;
	private String type;
	private String itemPicture;
	private String itemTitle;
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDTO(int board_no, String id, String content, String itemno, String wdate, int ref, int indent,
			char lev, String subject, String writer, String check_read, String category, String type,
			String itemPicture, String itemTitle) {
		super();
		this.board_no = board_no;
		this.id = id;
		this.content = content;
		this.itemno = itemno;
		this.wdate = wdate;
		this.ref = ref;
		this.indent = indent;
		this.lev = lev;
		this.subject = subject;
		this.writer = writer;
		this.check_read = check_read;
		this.category = category;
		this.type = type;
		this.itemPicture = itemPicture;
		this.itemTitle = itemTitle;
	}
	@Override
	public String toString() {
		return "BoardDTO [board_no=" + board_no + ", id=" + id + ", content=" + content + ", itemno=" + itemno
				+ ", wdate=" + wdate + ", ref=" + ref + ", indent=" + indent + ", lev=" + lev + ", subject=" + subject
				+ ", writer=" + writer + ", check_read=" + check_read + ", category=" + category + ", type=" + type
				+ ", itemPicture=" + itemPicture + ", itemTitle=" + itemTitle + "]";
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
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
	public String getItemno() {
		return itemno;
	}
	public void setItemno(String itemno) {
		this.itemno = itemno;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
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
	public char getLev() {
		return lev;
	}
	public void setLev(char lev) {
		this.lev = lev;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCheck_read() {
		return check_read;
	}
	public void setCheck_read(String check_read) {
		this.check_read = check_read;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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

	}
