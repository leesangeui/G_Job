<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="name"/>님 환영합니다.
	</sec:authorize>
	
	<br>
	<a href="<c:url value='Cust/indiv/login'/>">개인사용자 로그인</a>
	<a href="<c:url value='Cust/Company/login'/>">기업사용자 로그인</a>
	<sec:authorize access="isAuthenticated()">
		<li><a href="<c:url value='/j_spring_security_logout'/>">로그아웃</a></li>
	</sec:authorize>	
	
</body>
</html>