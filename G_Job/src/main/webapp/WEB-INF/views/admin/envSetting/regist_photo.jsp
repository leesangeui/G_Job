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
			//alert("수정되었습니다.");
			location.href="logo"
		</script>
	</c:if>
</body>
</html>