<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE>
<html>
<head>
<title>굿잡</title>
<div id=hdivCalender onMouseOver="this.style.visibility='visible'" style="border-width:0px; border-top-color:rgb(102,102,255); border-right-color:rgb(102,102,255); border-bottom-color:rgb(102,102,255); border-left-color:rgb(102,166,255); border-style:solid; width:200px; height:200px; position:absolute; left:50px; top:50px; z-index:1; visibility:hidden;" > 
    <p> </p> 
</div>
<script>jQuery.noConflict();</script>
</head>
<div id="topmn_bl"></div>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
   <tr align="center">
   <td>
    <!-- 탑 호출 --><!-- 오른쪽 사이드 배너 호출 -->
      <%@ include file="../top/top1.jsp"%>
   <%@ include file="../sidebar/banner1.jsp"%>
   <!-- 탑 종료 --><!-- 오른쪽 사이드 배너 종료 --><!-- /td -->
   
     <!-- 메인 컨텐츠 호출 -->
      <%@ include file="./deleteForm.jsp" %>    
     <!-- 메인 컨텐츠 종료 -->
     </td></tr>
     
   <tr><td align="center">
   <!-- 풋터 호출 -->
   <%@ include file="../footer/footer1.jsp" %>
   <!-- 풋터 종료 -->
   </td></tr>
</table> 
</body>
</html>