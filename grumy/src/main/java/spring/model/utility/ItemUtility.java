package spring.model.utility;

public class ItemUtility {

	public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word,String type) {
		int pagePerBlock = 2; 
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage));
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock));
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1;
		int endPage = (nowGrp * pagePerBlock);

		StringBuffer str = new StringBuffer();

		str.append("<div class=\"xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate\">");
		int _nowPage = (nowGrp - 1) * pagePerBlock; 
		if (nowGrp >= 2) {
			str.append("<a href='/grumy/item/list?type="+type+"&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_prev.gif\" alt=\"이전 페이지\"></A>");
		}
		str.append("<ol>");
		
				
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}

			if (nowPage == i) {
				str.append("<li class='active'><a href=# class=\"this\">" + i + "</a></li>");
			} else {
				str.append("<li class=\"xans-record-\"><a href='/grumy/item/list?type=" + type + "&nowPage=" + i + "' class=\"other\">" + i
						+ "</A></li>");
			}
		}
		str.append("</ol>");
		_nowPage = (nowGrp * pagePerBlock) + 1; 
		if (nowGrp < totalGrp) {
			str.append(
					"<A href='/grumy/item/list?type=" + type + "&nowPage=" + _nowPage + "'><img src=\"/grumy/images/page_next.gif\" alt=\"다음 페이지\"></A>");
		}

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