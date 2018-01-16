<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>  
<!DOCTYPE>
<html>
<head>
<title>Insert title here</title>
<script src="${js}join.js"></script>
</head>
<body onload="uidFocus__();">
	<form action="../Cust/confirmId" method="post" name="regist_form" onsubmit="return check_login__(${ck},2);" style="margin:0px;">
		<input type="hidden" value="${m_type}" name="m_type">
		<!-- 중복 아이디가 있을때  -->
		<c:if test="${cnt==1}">
			<table style="width:100%; border:none; background-color:#f5f5f5">
				<tr height="27">
				<td class="pt7" colspan="2">
					<table style="width:100%; border:none;">
						<tr style="height:5px;"></tr>
						<tr>
							<td class="box1" valign="top">
								<div class="mt15 pL7">
									<b>${uid}</b>&nbsp;
									<font class="font11">
										은 사용할수 없습니다.
									</font>
								</div>
								<table style="margin:10px; width:97%;" cellspacing="5" cellpadding="0" align="center" class="ln_box wbg">
									<colgroup><col width="21%"><col width="79%"></colgroup>
									<tr>															
										<td class="lnb2 b fon11" style="width:30%; border-bottom:none;">
											<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">아이디
						 				</td>
										<td class="lnb2 pL5"  style="border-bottom:none;">
											<input type="text" name="uid" id="uid" hname="아이디" style=" width:50%;" class="text">
											<div class="mt5 gr">
												<font class="fon11 lsm1">영문과 숫자를 조합하여 4 ~ 12자 이내로 입력하세요.</font>
											</div>
										</td>																																																
									</tr>
								</table>
							 </td>
						  </tr>
					 </table>
				 </td>
				 </tr>
				 <tr>
					<td class="pt15 pb20" align="center" colspan="2">
						<input type="image" src="${allimage}btn/ok.gif" style="cursor:pointer; padding:0px; width:66px; height:35px;"> &nbsp;
						<img src="${allimage}btn/cancel.gif" style="cursor:pointer;" onclick="self.close();"> 
					</td>
				 </tr>
			 </table>
		 </c:if>
		
		<!-- 중복 아이디가 없을때 -->
		<c:if test="${cnt!=1}">
			<table style="width:100%; border:none; height:205px; background-color:#f5f5f5">
				<tr height="27">
				<td class="pt7" colspan="2">
					<table style="width:100%; border:none;">
						<tr style="height:20px;"></tr>
						<tr>
							<td>
								<table style="width:97%;" cellspacing="5" cellpadding="0" align="center" class="ln_box wbg">
									<tr>
									<td class="box1" valign="top" style="height:80px; text-align:center;">
										<div style="margin-top: 25px;">
											<b style="font-size:23px;">${uid}</b>&nbsp;
											<font class="font11" style="font-size:18px;">
												은 사용할수 있습니다.
											</font>
										</div>
									 </td>
									 </tr>
								</table>
							</td>	
						  </tr>
					 </table>
				 </td>
				 </tr>
				 <tr>
					<td class="pt15 pb20" align="center" colspan="2">
						<img src="${allimage}btn/ok.gif" style="cursor:pointer;" onclick="setCustId('${uid}');">
					</td>
				 </tr>
			 </table>
		</c:if>
	</form>
</body>
</html>