package spring.model.utility;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Utility {
	
	
	
	public static String saveFileSpring(MultipartFile multipartFile, String basePath) { 
        // input form's parameter name 
        String fileName = ""; 
        // original file name 
        String originalFileName = multipartFile.getOriginalFilename(); 
        // file content type 
        String contentType = multipartFile.getContentType(); 
        // file size 
        long fileSize = multipartFile.getSize(); 
         
        System.out.println("fileSize: " + fileSize); 
        System.out.println("originalFileName: " + originalFileName); 
         
        InputStream inputStream = null; 
        OutputStream outputStream = null; 
   
        try { 
            if( fileSize > 0 ) { // 파일이 존재한다면 
                // 인풋 스트림을 얻는다. 
                inputStream = multipartFile.getInputStream(); 
 
                File oldfile = new File(basePath, originalFileName); 
             
                if ( oldfile.exists()){ 
                    for(int k=0; true; k++){ 
                        //파일명 중복을 피하기 위한 일련 번호를 생성하여 
                        //파일명으로 조합 
                        oldfile = new File(basePath,"("+k+")"+originalFileName); 
                     
                        //조합된 파일명이 존재하지 않는다면, 일련번호가 
                        //붙은 파일명 다시 생성 
                        if(!oldfile.exists()){ //존재하지 않는 경우 
                            fileName = "("+k+")"+originalFileName; 
                            break; 
                        } 
                    } 
                }else{ 
                    fileName = originalFileName; 
                } 
                //make server full path to save 스토리지 경로로 이동
                String serverFullPath = basePath + "\\" + fileName; 
                 
                System.out.println("fileName: " + fileName); 
                System.out.println("serverFullPath: " + serverFullPath); 
                 
                outputStream = new FileOutputStream( serverFullPath ); 
  
                // 버퍼를 만든다. 
                int readBytes = 0; 
                byte[] buffer = new byte[8192]; 
 
                while((readBytes = inputStream.read(buffer, 0, 8192)) != -1 ) { 
                    outputStream.write( buffer, 0, readBytes ); 
                } 
                outputStream.close(); 
                inputStream.close(); 
                         
            } 
 
        } catch(Exception e) { 
            e.printStackTrace();   
        }finally{ 
             
        } 
         
        return fileName; 
    } 

	public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word) {
		int pagePerBlock = 10; // ���� ������ ��
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage));
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock));
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1;
		int endPage = (nowGrp * pagePerBlock);

		StringBuffer str = new StringBuffer();

		str.append("<div class=\"xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate\">");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 10�� ���� �������� �̵�
		if (nowGrp >= 2) {
			str.append("<a href='./list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_prev.gif\" alt=\"이전 페이지\"></A>");
		}
		str.append("<ol>");
		
				
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}

			if (nowPage == i) {
				str.append("<li class='active'><a href=# class=\"this\">" + i + "</a></li>");
			} else {
				str.append("<li class=\"xans-record-\"><a href='./list?col=" + col + "&word=" + word + "&nowPage=" + i + "' class=\"other\">" + i
						+ "</A></li>");
			}
		}
		str.append("</ol>");
		_nowPage = (nowGrp * pagePerBlock) + 1; // 10�� ���� �������� �̵�
		if (nowGrp < totalGrp) {
			str.append(
					"<A href='./list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_next.gif\" alt=\"다음 페이지\"></A>");
		}

		str.append("</div>");
		return str.toString();
	}
	public static String mypaging(int totalRecord, int nowPage, int recordPerPage, String col, String word) {
		int pagePerBlock = 10; // ���� ������ ��
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage));
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock));
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1;
		int endPage = (nowGrp * pagePerBlock);
		
		StringBuffer str = new StringBuffer();
		
		str.append("<div class=\"xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate\">");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 10�� ���� �������� �̵�
		if (nowGrp >= 2) {
			str.append("<a href='./mylist?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_prev.gif\" alt=\"이전 페이지\"></A>");
		}
		str.append("<ol>");
		
		
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			
			if (nowPage == i) {
				str.append("<li class='active'><a href=# class=\"this\">" + i + "</a></li>");
			} else {
				str.append("<li class=\"xans-record-\"><a href='./mylist?col=" + col + "&word=" + word + "&nowPage=" + i + "' class=\"other\">" + i
						+ "</A></li>");
			}
		}
		str.append("</ol>");
		_nowPage = (nowGrp * pagePerBlock) + 1; // 10�� ���� �������� �̵�
		if (nowGrp < totalGrp) {
			str.append(
					"<A href='./mylist?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_next.gif\" alt=\"다음 페이지\"></A>");
		}
		
		str.append("</div>");
		return str.toString();
	}
	public static String paging1(int totalRecord, int nowPage, int recordPerPage,String state) {
		int pagePerBlock = 10; // ���� ������ ��
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage));
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock));
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1;
		int endPage = (nowGrp * pagePerBlock);
		
		StringBuffer str = new StringBuffer();
		if(state == null) {
		str.append("<div class=\"xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate\">");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 10�� ���� �������� �̵�
		if (nowGrp >= 2) {
			str.append("<a href='./list?nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_prev.gif\" alt=\"이전 페이지\"></A>");
		}
		str.append("<ol>");
		
		
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			
			if (nowPage == i) {
				str.append("<li class='active'><a href=# class=\"this\">" + i + "</a></li>");
			} else {
				str.append("<li class=\"xans-record-\"><a href='./list?nowPage=" + i + "' class=\"other\">" + i
						+ "</A></li>");
			}
		}
		str.append("</ol>");
		_nowPage = (nowGrp * pagePerBlock) + 1; // 10�� ���� �������� �̵�
		if (nowGrp < totalGrp) {
			str.append(
					"<A href='./list??nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_next.gif\" alt=\"다음 페이지\"></A>");
		}
		
		str.append("</div>");
		
		}else {
			
		str.append("<div class=\"xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate\">");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 10�� ���� �������� �̵�
		if (nowGrp >= 2) {
			str.append("<a href='./list?state=" + state + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_prev.gif\" alt=\"이전 페이지\"></A>");
		}
		str.append("<ol>");
		
		
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			
			if (nowPage == i) {
				str.append("<li class='active'><a href=# class=\"this\">" + i + "</a></li>");
			} else {
				str.append("<li class=\"xans-record-\"><a href='./list?state=" + state + "&nowPage=" + i + "' class=\"other\">" + i
						+ "</A></li>");
			}
		}
		str.append("</ol>");
		_nowPage = (nowGrp * pagePerBlock) + 1; // 10�� ���� �������� �̵�
		if (nowGrp < totalGrp) {
			str.append(
					"<A href='./list?state=" + state + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_next.gif\" alt=\"다음 페이지\"></A>");
		}
		
		str.append("</div>");
		}
		return str.toString();
	}
	
	

	public static String checkNull(String str) {
		if (str == null) {
			str = "";

		}

		return str;
	}
	
	public static List<String> getDay(){
		List<String> list = new ArrayList<String>();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		for(int i=0;i<3;i++) {
		list.add(sd.format(cal.getTime())); //오늘날짜 YYYY~형태로 가져옴
		cal.add(Calendar.DATE, -1);
		} 
		
		return list;
		
	}
	
	public static boolean compareDay(String wdate) {
		boolean flag = false;
		List<String> list = getDay();
		if(wdate.equals(list.get(0))
				|| wdate.equals(list.get(1))
				|| wdate.equals(list.get(2))) {
			flag = true;
		}
		
		
		return flag;
	}

}