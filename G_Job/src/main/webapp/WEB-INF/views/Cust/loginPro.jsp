<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 메인에서 로그인시  마이 페이지로 이동  -->
<!--  -->
<c:if test="${return_url.equals('job_user/indiService')}">
<script type="text/javascript">
	alert('${return_url}');
	window.location='${return_url}?m_type=${m_type}';
</script>
</c:if>
<c:if test="${!return_url.equals('Cust/job_user/indiService')}">
<script type="text/javascript">
	
	
	window.location='main';
</script>
 </c:if>
</body>
</html>