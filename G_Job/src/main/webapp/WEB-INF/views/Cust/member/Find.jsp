<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src="${js}jquery-1.12.4.js"></script>
<script src="${js}prototype.1.6.js"></script>
<script src="${js}goobjob_config.js"></script>
<script src="${js}googjob_util.js"></script>
<script src="${js}calendar2.js"></script>
<script src="${js}rolling_banner.js"></script>
<script src="${js}sc.js"></script>
<script src="${js}common.js"></script>
<script src="${js}sub_category.js"></script>
<script src="${js}get_category.js"></script>
<script src="${js}scrap.js"></script>
<script src="${js}form.js"></script>
<link rel='stylesheet' type='text/css' href='${css}style/style.css'>
<link rel='stylesheet' type='text/css' href='${css}style/box.css'>
<link rel='stylesheet' type='text/css' href='${css}style/color.css'>
<link rel='stylesheet' type='text/css' href='${css}style/bl.css'>

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
     		 	<!-- 아이디 . 비밀번호 찾기 폼 -->
     		 	<%@ include file="FindForm.jsp" %>
     		 	<!-- 아이디 . 비밀번호 찾기 폼 종료 -->
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
<%-- <c:set var="FindId" value="${FindId}" scope="request"></c:set> 
<c:set var="FindPw" value="${FindPw}" scope="request"></c:set>  --%>
<script type="text/javascript">
var FindId = '${requestScope.FindId}';
var FindPw = '${requestScope.FindPw}';
	
		
	if(FindId != '' && FindId != '1'){
		alert("사용자님의 아이디는 "+FindId+" 입니다.");
	}
	if(FindId == '1'){
		alert("등록되지 않은 정보입니다.");
	}
	if(FindPw != '' && FindPw != '1'){
		alert("사용자님의 비밀번호는 "+FindPw+" 입니다.");
	}
	if(FindPw == '1'){
		alert("등록되지 않은 정보입니다.");
	}
	

</script>

</body>
</html>