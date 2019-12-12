package spring.model.community;

import org.springframework.web.multipart.MultipartFile;

public class communityDTO {
   private int communityNo      ;
   private String id            ;
   private String content       ;
   private String itemno        ;
   private String wdate;
   private int ref;
   private int indent;
   private char lev;
   private String subject;
   private String writer;
   private String check_read;
   private String itemPicture;
   private String itemTitle;
   public communityDTO() {
      super();
      // TODO Auto-generated constructor stub
   }
   public communityDTO(int communityNo, String id, String content, String itemno, String wdate, int ref, int indent,
         char lev, String subject, String writer, String check_read, String itemPicture, String itemTitle) {
      super();
      this.communityNo = communityNo;
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
      this.itemPicture = itemPicture;
      this.itemTitle = itemTitle;
   }
   @Override
   public String toString() {
      return "communityDTO [communityNo=" + communityNo + ", id=" + id + ", content=" + content + ", itemno=" + itemno
            + ", wdate=" + wdate + ", ref=" + ref + ", indent=" + indent + ", lev=" + lev + ", subject=" + subject
            + ", writer=" + writer + ", check_read=" + check_read + ", itemPicture=" + itemPicture + ", itemTitle="
            + itemTitle + "]";
   }
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
   public String getitemno() {
      return itemno;
   }
   public void setitemno(String itemno) {
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