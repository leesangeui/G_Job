<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin_inc.jsp"%>
<body>
	<c:if test="${cnt==2 }">
		<script type="text/javascript">
			errorAlert(updateError);
		</script>
	</c:if>
	<c:if test="${cnt==1 }">
			<script type="text/javascript">
			<c:choose>
				<c:when test="${mode.equals('copyright') }">location.href="copyright?code=copyright";</c:when>
				<c:when test="${mode.equals('mail_copyright') }">location.href="copyright?code=mail_copyright";</c:when>
				<c:when test="${mode.equals('agreement') }">location.href="copyright?code=agreement";</c:when>
				<c:when test="${mode.equals('privacy') }">location.href="copyright?code=privacy";</c:when>
				<c:when test="${mode.equals('mem_privacy') }">location.href="copyright?code=mem_privacy";</c:when>
				<c:when test="${mode.equals('company') }">location.href="copyright?code=company";</c:when>
				<c:otherwise>location.href="base_environment";</c:otherwise>
			</c:choose>
			</script>
	</c:if>
	
</body>
</html>