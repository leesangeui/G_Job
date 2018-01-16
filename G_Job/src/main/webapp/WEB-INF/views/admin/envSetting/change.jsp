<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../../setting.jsp"%>
<script type="text/javascript" src="${js}admin_javascript.js"></script>
<html>
<body>
<c:if test="${cnt==-1}">
	<script>
	errorAlert(msg_pwdchk);
	</script>
</c:if>
<c:if test="${cnt==0}">
	<script>
	errorAlert(idError);
	</script>
</c:if>
<c:if test="${cnt==3}">
	<script>
	errorAlert(msg_id_ok);
	</script>
</c:if>
<c:if test="${cnt==1}">
	<script>
	window.location='/pro/Alogout';
	</script>
</c:if>
</body>
</html>