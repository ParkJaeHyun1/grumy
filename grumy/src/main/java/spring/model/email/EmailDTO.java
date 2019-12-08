package spring.model.email;

public class EmailDTO {
	private String From;
	private	String To;
	private String Subject;
	private String Text;
	
	@Override
	public String toString() {
		return "EmailDTO [From=" + From + ", To=" + To + ", Subject=" + Subject + ", Text=" + Text + "]";
	}
	public String getFrom() {
		return From;
	}
	public void setFrom(String from) {
		From = from;
	}
	public String getTo() {
		return To;
	}
	public void setTo(String to) {
		To = to;
	}
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
	public String getText() {
		return Text;
	}
	public void setText(String text) {
		Text = text;
	}
	
}