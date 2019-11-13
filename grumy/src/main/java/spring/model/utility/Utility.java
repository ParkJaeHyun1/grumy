package spring.model.utility;

public class Utility {

	public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word) {
		int pagePerBlock = 3; // ���� ������ ��
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage));
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock));
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1;
		int endPage = (nowGrp * pagePerBlock);

		StringBuffer str = new StringBuffer();

		int _nowPage = (nowGrp - 1) * pagePerBlock; // 10�� ���� �������� �̵�
		if (nowGrp >= 2) {
			str.append("<a href='/grumy/notice/list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_prev.gif\" alt=\"이전 페이지\"></A>");
		}
		str.append("<ol>");
		
				
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}

			if (nowPage == i) {
				str.append("<li class='active'><a href=# class=\"this\">" + i + "</a></li>");
			} else {
				str.append("<li class=\"xans-record-\"><a href='/grumy/notice/list?col=" + col + "&word=" + word + "&nowPage=" + i + "' class=\"other\">" + i
						+ "</A></li>");
			}
		}
		str.append("</ol>");
		_nowPage = (nowGrp * pagePerBlock) + 1; // 10�� ���� �������� �̵�
		if (nowGrp < totalGrp) {
			str.append(
					"<A href='/grumy/notice/list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_next.gif\" alt=\"다음 페이지\"></A>");
		}


		return str.toString();
	}

	public static String checkNull(String str) {
		if (str == null) {
			str = "";

		}

		return str;
	}
}