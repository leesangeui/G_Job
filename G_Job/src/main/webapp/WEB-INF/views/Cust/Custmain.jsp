<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE>
<html>
<head>
<title>구인구직솔루션의 최강자 - 넷퓨</title>
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
<div id=hdivCalender onMouseOver="this.style.visibility='visible'" style="border-width:0px; border-top-color:rgb(102,102,255); border-right-color:rgb(102,102,255); border-bottom-color:rgb(102,102,255); border-left-color:rgb(102,166,255); border-style:solid; width:200px; height:200px; position:absolute; left:50px; top:50px; z-index:1; visibility:hidden;" > 
    <p> </p> 
</div>
<link rel='stylesheet' type='text/css' href='${css}style/style.css'>
<link rel='stylesheet' type='text/css' href='${css}style/box.css'>
<link rel='stylesheet' type='text/css' href='${css}style/color.css'>
<link rel='stylesheet' type='text/css' href='${css}style/bl.css'>
<script>jQuery.noConflict();</script>
<head>
<div id="topmn_bl"></div>
<script>
</script>
</head>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr><td align="center">
  

<!-- 탑 호출 -->
<%@ include file="top/top1.jsp"%>
<!-- 탑 종료 -->
<!-- 오른쪽 사이드 배너 호출 -->
<%@ include file="sidebar/banner1.jsp"%>
<!-- 오른쪽 사이드 배너 종료 -->

<!-- 메인 컨텐츠 호출 -->

<!-- 컨텐츠1 호출 -->
<%@ include file="content1/content1_1.jsp" %>
<!-- 컨텐츠1 종료 -->
<!-- 채용정보 (플래티넘,프라임,배너,hot,알바,프리미엄 인재정보,로고형 채용정보  호출 -->
<%@ include file="recruitment/recruitment.jsp" %>
<!-- 채용정보 (플래티넘,프라임,배너,hot,알바,프리미엄 인재정보,로고형 채용정보  종료 -->
<!-- 게시판 호출 -->
<%@ include file="board/board1.jsp" %>
<!-- 게시판 종료 -->
</table>

<!-- 메인 컨텐츠 종료 -->
</td>
</tr>
<tr><td align="center">
<!-- 풋터 호출 -->
<%@ include file="footer/footer1.jsp" %>
<!-- 풋터 종료 -->
</td></tr>
</table> 