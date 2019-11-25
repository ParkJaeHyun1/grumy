package spring.model.notice;

public class NoticeDTO {
	
	private int no;
	private String subject;
	private String content;
	private String writer;
	private String wdate;
	private char lev;
	
	public NoticeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoticeDTO(int no, String subject, String content, String writer, String wdate, char lev) {
		super();
		this.no = no;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.wdate = wdate;
		this.lev = lev;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", subject=" + subject + ", content=" + content + ", writer=" + writer
				+ ", wdate=" + wdate + ", lev=" + lev + "]";
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

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public char getLev() {
		return lev;
	}

	public void setLev(char lev) {
		this.lev = lev;
	}
	

}
