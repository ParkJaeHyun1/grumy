<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<script type="text/javascript" src="${pageContext.request.contextPath}/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<textarea rows="20" cols="124"                                                        
												name="content" id="content">                                                                              	
                              </textarea> <script type="text/javascript">                                        
									var oEditors = [];
									nhn.husky.EZCreator.createInIFrame({  
										oAppRef: oEditors,
										elPlaceHolder: "content",
										sSkinURI: "${pageContext.request.contextPath}/smarteditor/SmartEditor2Skin.html",
										fCreator: "createSEditor2"     
									});
									</script>