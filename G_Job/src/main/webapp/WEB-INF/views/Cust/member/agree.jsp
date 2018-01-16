<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<table style="width:100%; border:none;"cellspacing="0" cellpadding="0">
	<tr><td align="center">
	<!-- top -->
	<%@ include file="../top/top1.jsp"%>
	<!-- top 끝 -->
	</td></tr>
		
	<!-- main -->
	<tr class=pt10>
	<td>
  		<table style="width:950px; border:none; padding-top:10px;" cellspacing="0" cellpadding="0" align="center">
   			 <tr valign="top">
     		 <td>
     		 	<!-- 왼쪽 메뉴 바 (로그인메뉴 포함) -->
     		 	<%@ include file="./left_menu.jsp" %>
     			 <!-- 왼쪽 메뉴바 끝 -->
     		 </td>		
     		 <td class="pL10" align="right">
     		 	<!-- 약관 동의 -->
     		 	<%@ include file="./terms.jsp" %>
     		 	<!-- 약관 동의 끝 -->
     		 </td>
   			 </tr>
  		</table>
  	</td>
 	</tr>
	<!-- main 끝 -->
	
	<tr><td align="center">
	<!-- 풋터 호출 -->
	<%@ include file="../footer/footer1.jsp" %>
	<!-- 풋터 종료 -->
	</td></tr>
</table>
</body>
</html>