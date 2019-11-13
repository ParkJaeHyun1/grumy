package spring.model.utility;

public class Utility {

	public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word) {
		int pagePerBlock = 5; // ���� ������ ��
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage));
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock));
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1;
		int endPage = (nowGrp * pagePerBlock);

		StringBuffer str = new StringBuffer();
		str.append("<div style='text-align:center'>");
		str.append("<ul class='pagination'> ");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 10�� ���� �������� �̵�
		if (nowGrp >= 2) {
			str.append("<li><a href='./list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'>'<'</A></li>");
		}

		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}

			if (nowPage == i) {
				str.append("<li class='active'><a href=#>" + i + "</a></li>");
			} else {
				str.append("<li><a href='./list.do?col=" + col + "&word=" + word + "&nowPage=" + i + "'>" + i
						+ "</A></li>");
			}
		}

		_nowPage = (nowGrp * pagePerBlock) + 1; // 10�� ���� �������� �̵�
		if (nowGrp < totalGrp) {
			str.append(
					"<li><A href='./list.do?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'>'>'</A></li>");
		}
		str.append("</ul>");
		str.append("</div>");

		return str.toString();
	}

	public static String checkNull(String str) {
		if (str == null) {
			str = "";

		}

		return str;
	}
}