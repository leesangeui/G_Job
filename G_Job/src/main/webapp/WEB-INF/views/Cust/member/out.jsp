<%@ include file="../../setting.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE>
<html>
<head>
</head>
<body>
   <c:if test="${cnt == 1}">
      <script type="text/javascript">
         setTimeout(function() {
            alert("회원탈퇴하였습니다.");
            window.location="../Cust/main";
         }, 1000);
      </script>
   </c:if>
   <c:if test="${cnt != 1}">
      <script type="text/javascript">
         setTimeout(function() {
            alert("죄송합니다. 회원탈퇴에 실패하였습니다.\n 다시한번 시도해주세요.");
            window.history.back();
         }, 1000);
      </script>
   </c:if>
</body>
</html>