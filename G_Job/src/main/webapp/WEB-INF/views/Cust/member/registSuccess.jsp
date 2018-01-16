<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<c:if test="${cnt == 1}">
<table width="740" border="0" cellspacing="0" cellpadding="0">
	<tr><td align="right" valign="bottom">
	<!--네비-->
		<div>
			<a href="/" class=navi>
				<img src="${allimage}ic/home.gif" class="f75" style="margin:0 4">Home
			</a>
			<img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0">
			<a href="" class=navi>멤버쉽</a>
			<img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0">
			<b class="navi bl">가입완료</b>
		</div>
	<!--네비 끝 -->
	</td></tr>
 	<tr><td height='30' class="ln_b">
 		<div>
 			<img src="${allimage}bl/bul_05.gif" align="top"> 
 			<img src="${allimage}tlt/mem_02.gif">
 		</div>
 	</td></tr>
 	<tr><td class="pt15" align="right">
 		<img src="${allimage}login/step_01.gif">
 		<img src="${allimage}bk/bul_08.gif" align="absmiddle" hspace="7">
 		<img src="${allimage}login/step_02.gif">
 		<img src="${allimage}bk/bul_08.gif" align="absmiddle" hspace="7">
 		<img src="${allimage}login/step_r03.gif">
 	</td></tr>
	<tr><td class="pt10">
		<img src="${allimage}bl/bul_15.gif" align="absmiddle" hspace="3">
		<img src="${allimage}tlt/tlt_mn11.gif" align="absbottom">
	</td></tr>
	<tr><td class="pt7" align="center">
		<table width="99%" border="0" cellspacing="0" cellpadding="0"><tr><td class=bl071_01></td><td class=bl071_02></td><td class=bl071_03></td></tr>
 			<tr>
	 			<td class=bl071_04></td>
	 			<td class="bg_bl">
	 		   		<table width="100%" border="0" cellspacing="10" cellpadding="0">
	   					 <tr><td class="ln_box wbg" align="center">
	   					 	<img src="${allimage}login/result.gif" vspace="10">
	     					<div class="fon11 mb20 h20">
	     						취업사이트 <font class="num">No.1</font> <b class="bl">넷퓨</b>에 회원가입해 주셔서 감사합니다.<br>
								<b class="bl">넷퓨</b>과(와) 함께 알찬 정보와 서비스를 제공해 드릴것을 약속드립니다.
	      					</div>
	      				 </td></tr>
	  				</table>
	  			</td>
	  			<td class=bl071_05></td>
  			</tr>
  			<tr>
  				<td class=bl071_06></td>
  				<td class=bl071_07></td>
  				<td class=bl071_08></td>
  			</tr>
  		</table>
  	</td></tr>
	<tr><td class="pt15 pb20" align="center">
		<a href="../Cust/main"><img src="${allimage}btn/ok.gif" class="png vm grf_bl"></a>
	</td></tr>
</table>
</c:if>

<c:if test="${cnt != 1}">
	<script type="text/javascript">
		setTimeout(function() {
			alert("죄송합니다.\n회원가입에 실패하였습니다. 다시한번 시도해주십시오.");
			window.location="../Cust/main";
		}, 1000);
	</script>
</c:if>