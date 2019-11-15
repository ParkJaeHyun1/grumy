package spring.model.notice;

public class NoticeDTO {
	
	private int no;
	private String subject;
	private String content;
	private String writer;
	private String wdate;
	
	public NoticeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDTO(int no, String subject, String content, String writer, String wdate) {
		super();
		this.no = no;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.wdate = wdate;
	}
	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", subject=" + subject + ", content=" + content + ", writer=" + writer
				+ ", wdate=" + wdate + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getwdate() {
		return wdate;
	}
	public void setwdate(String wdate) {
		this.wdate = wdate;
	}
	

}
