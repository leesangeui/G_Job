<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
   //치환 변수 선언
    pageContext.setAttribute("cr", "\r"); //Space
    pageContext.setAttribute("cn", "\n"); //Enter
    pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
    pageContext.setAttribute("br", "<br/>"); //br 태그
%>
<%-- <c:set value="${fn:replace(vo.book_cover, cn, br)}" var="POOL_EXPLAIN" />
${POOL_EXPLAIN} --%>


<c:set var="project" value="/pro/resources/"/>
<c:set var="css" value="${project}css/"/>
<c:set var="image" value="${project}admin_image/"/>
<c:set var="allimage" value="${project}all_image/"/>
<c:set var="js" value="${project}js/"/>
<c:set var="font" value="${project}font/"/>
<c:set var="style" value="${project}style/"/>
<c:set var="peg" value="${project}peg/"/>




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
<script src="${js}easyEditor.js"></script>
<script src="${js}netfu_util.js"></script>
<link rel='stylesheet' type='text/css' href='${css}style/style.css'>
<link rel='stylesheet' type='text/css' href='${css}style/box.css'>
<link rel='stylesheet' type='text/css' href='${css}style/color.css'>
<link rel='stylesheet' type='text/css' href='${css}style/bl.css'>