<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="0" cellspacing="0" cellpadding="0">
	<tr><td>
		<!-- 로그인 메뉴 -->
		<%@ include file="../login/login.jsp" %>
		<!-- 로그인 메뉴 끝 -->
	</td></tr>
	<tr><td class="pt7">
		<img src="${allimage}bl/leftmn_01.gif">
	</td></tr>
 	<tr><td background="${allimage}bl/leftmn_06.gif" style="padding:0 6">
 	<!-- 메뉴 -->  
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
     		<tr><td style="background:url('${allimage}bl/leftmn_02.gif') no-repeat top; padding:11 5 14 5; height:60; vertical-align:top;">
     			<img src="${allimage}bl/tlt_log.gif">
     		</td></tr>
     		<tr><td style="padding:0 6" background="${allimage}bl/leftmn_04.gif" valign="top">
   				<table width="95%" border="0" cellspacing="0" cellpadding="5" align="center">     
				     <tr><td class="ln_b">
				     	<img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
				     	<a href="../Cust/member"><b class="bk">회원가입</b></a>
				     </td></tr>     
				     <tr><td class="ln_b">
				     	<img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
				     	<a href="../Cust/Find"><b class="bk">아이디/비밀번호찾기</b></a>
				     </td></tr>     
				     <tr><td class="ln_b">
				     	<img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
				     	<a href="/member/guide.html"><b class="bk">이용약관</b></a>
				     </td></tr>
				     <tr><td class="ln_b">
				     	<img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
				     	<a href="/member/privacy.html"><b class="bk">개인정보 보호방침</b></a>
				     </td></tr>    
    			</table>    
   			</td></tr>
   			<tr><td>
   				<img src="${allimage}bl/leftmn_05.gif">
   			</td></tr>         
   		</table>      
	</td></tr>
	<tr><td valign="bottom">
		<img src="${allimage}bl/leftmn_07.gif" width="200" height="6">
	</td></tr>
</table>