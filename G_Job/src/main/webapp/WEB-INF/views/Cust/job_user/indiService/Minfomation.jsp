<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../setting.jsp"%>
<!DOCTYPE>
<html>
<head>
<title>굿잡 </title>

<div id=hdivCalender onMouseOver="this.style.visibility='visible'" style="border-width:0px; border-top-color:rgb(102,102,255); border-right-color:rgb(102,102,255); border-bottom-color:rgb(102,102,255); border-left-color:rgb(102,166,255); border-style:solid; width:200px; height:200px; position:absolute; left:50px; top:50px; z-index:1; visibility:hidden;" > 
    <p> </p> 
</div>

<script>jQuery.noConflict();</script>
<head>
<div id="topmn_bl"></div>
<c:if test="${sessionScope.ISessionId==null && sessionScope.CSessionId==null}">
<script type="text/javascript">
	alert("개인회원 전용 페이지입니다. 개인회원 로그인 해주시길 바랍니다.");
	window.location="main";
</script>
</c:if>
</head>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr><td align="center">
  

<!-- 탑 호출 -->
<%@ include file="../../top/top1.jsp"%>
<!-- 탑 종료 -->
<!-- 오른쪽 사이드 배너 호출 -->
<%@ include file="../../sidebar/banner1.jsp"%>
<!-- 오른쪽 사이드 배너 종료 -->

<!-- 메인 컨텐츠 호출 -->

<!-- 컨텐츠1 호출 -->
<c:if test="${m_type == 1}">
   <%@ include file="../../content1/content1_3.jsp" %>
</c:if>
<c:if test="${m_type == 2}">
   <%@ include file="../../content1/content1_5.jsp" %>
</c:if>
<!-- 컨텐츠1 종료 -->

<!-- 메인 컨텐츠 종료 -->
</td>
</tr>
<tr><td align="center">
<!-- 풋터 호출 -->
<%@ include file="../../footer/footer1.jsp" %>
<!-- 풋터 종료 -->
</td></tr>
</table> 