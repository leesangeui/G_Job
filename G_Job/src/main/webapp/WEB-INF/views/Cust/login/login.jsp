<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>/* 로그인 버튼 누름시 변화 */
 
if(request.getProtocol().equals("HTTP/1.0")){
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
} else if(request.getProtocol().equals("HTTP/1.1")){
response.setHeader("Cache-Control","no-cache");
}

function toggleView(num){
	if(num==5){			
		oherpromotionview1.style.display = "block";	
		oherpromotionview2.style.display = "none";	
	}else{
		oherpromotionview1.style.display = "none";	
		oherpromotionview2.style.display = "block";	
	}
    if(num==1){	
		login_view1.style.display = "";
		document.getElementById('login_uid').value="lsy0535";
		document.getElementById('login_passwd').value="qwe123R";
		login_view2.style.display = "none";	
		
		
		document.getElementById('m_type').value="1";
	}else if(num==2){
		login_view1.style.display = "none";	
		document.getElementById('login_uid').value="ljh0535";
		document.getElementById('login_passwd').value="qwe123R";
		login_view2.style.display = "block";	
			
		
		document.getElementById('m_type').value="2";
	}
}
	
</script>

<c:if test="${sessionScope.ISessionId==null && sessionScope.CSessionId==null}">

<!--로그인-->
<div id="oherpromotionview1" class="oherpromotionlist" style="display:;">
<div class="oherpromotioninner">
<!-- 로그인 클릭전-->
	<table width="200" border="0" cellspacing="0" cellpadding="0" background="${allimage}login/login_bg.gif" style="table-layout:fixed">
		<tr>
			<td><img src="${allimage}login/login_top.gif"></td>
		</tr>
		<tr>
			<td align="center" class="gr_bg" style="border-right:1px solid #b3b3b3;border-left:1px solid #b3b3b3">
				<table width="94%" border="0" cellspacing="0" cellpadding="0" bgcolor=#f2f2f2>
					<tr height=25>
						<td class="wbg"><img src="${allimage}common/ic_m02.gif" align="absmiddle"> <b>회원로그인</b></td>
					</tr>
					<tr align="center">
						<td valign="bottom" class="pt7">
							<img src="${allimage}login/btn_log301.gif" hspace="2"  onClick="toggleView(1)" style="cursor:pointer"><!-- 개인회원 -->
							<img src="${allimage}login/btn_log302.gif" hspace="2"  onClick="toggleView(2)" style="cursor:pointer"><!-- 기업회원 -->
							
						</td>
					</tr>
					<tr align="center">
						<td height="10"><img src="${allimage}login/login_ln.gif" width="175" height=2></td>
					</tr>
					<tr align="center" height="20">
						<td align="center" class="fon11 lsm1"><a href="../Cust/member" class=bk><b class=bl>회원가입</b></a> &nbsp;|&nbsp; <a href="../Cust/Find" class=bk>아이디 &#8226; 비밀번호 찾기</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><img src="${allimage}login/login_btm.gif"></td></tr>
	</table>
</div>
</div>
<!--로그인 클릭전 끝-->

<!-- 로그인 클릭후-->
<div id="oherpromotionview2" class="oherpromotionlist" style="display:none;">
<div class="oherpromotioninner">

	<table width="100%" border="0" cellspacing="0" cellpadding="0" background="${allimage}login/login_bg.gif" style="table-layout:fixed">
		<tr>
			<td><img src="${allimage}login/login_top.gif"></td>
		</tr> 
		<tr>
			<td align="center" class="gr_bg" style="border-right:1px solid #b3b3b3;border-left:1px solid #b3b3b3">
				<table width="94%" border="0" cellspacing="0" cellpadding="0" bgcolor=#f2f2f2 class="tf">
				<form name="login_main_form" method="post" action = "../Cust/login" onSubmit="return validate(this);">
				<input type="hidden" name="mode" value="login">
				<input type="hidden" name="return_url" value="<%= request.getRequestURI() %>">
				<input type="hidden" name="m_type" id="m_type" value="">
					<tr height=25>
						<td class="wbg" width="130px"><b>
							<div id="login_view1" style="display:none;"><img src="${allimage}common/ic_m01.gif" class="vm mb2"> 개인회원로그인</div>
							<div id="login_view2" style="display:none;"><img src="${allimage}common/ic_m01.gif" class="vm mb2"> 기업회원로그인</div>
							
						</td>
						<td class="wbg" align="right">
							<img src="${allimage}login/btn_close.gif" align="absmiddle"  onClick="toggleView(5)" style="cursor:pointer">
						</td>
					</tr>
					<tr align="center" height="49">
						<td style="padding:4 0 0 2">
							<dt>
								<input type="text" class=text style='width:115;' name="id" id="login_uid" hname="아이디" required option="userid">
							</dt>
							<dt class="mt3">
								<input  type="password" name="passwd" id="login_passwd" class=text style='width:115;' hname="비밀번호" required option="userpw" onKeypress="if(event.keyCode ==13){submit();return;}">
							</dt>		
						</td>
						<td style="padding:4 5 0 0"><input type="image" src="${allimage}login/btn_login.gif" style='width:54;height:41'></td>
					</tr>
					<tr align="center">
					<td colspan="2" height="10">
						<img src="${allimage}login/login_ln.gif" width="175" height=2 class="vm m0">
      				</td>
      				</tr>
					<tr align="center" height="20">
						<td colspan="2" align="center" class="fon11 lsm1">
						<a href="../Cust/member" class=bk><b class=org>회원가입</b></a>&nbsp;|&nbsp; 
						<a href="../Cust/Find" class=bk>아이디 &#8226; 비밀번호 찾기</a>
						</td>
					</tr>
				</form>
				</table>
			</td>
		</tr>
		<tr>
			<td><img src="${allimage}login/login_btm.gif"></td>
		</tr>
	</table>
</div>
</div>
<!-- 로그인 클릭후 끝-->
<!--로그인-->
</c:if>

<c:if test="${sessionScope.ISessionId!=null}">
<!-- 로그인 후 -->
<table width="200" border="0" cellspacing="0" cellpadding="0" background="${allimage}login/login_bg.gif" style="table-layout:fixed">
  <tr>
    <td><img src="${allimage}login/login_top.gif"></td>
  </tr>
  <tr>
    <td align="center" class="gr_bg" style="border-right:1px solid #b3b3b3;border-left:1px solid #b3b3b3">
    <table width="94%" border="0" cellspacing="0" cellpadding="0" bgcolor=#f2f2f2 class="tf">
      <tr height=25>
        <td class="wbg fon11" width="75%"><img src="${allimage}common/ic_m01.gif" class="vm mb2"> <b class="ddgr">${ISessionId} </b>님 안녕하세요.</td>
        <td class="wbg fon11" align="right"><b>[</b>개인<b>]</b></td></tr>
      <tr align="center"><td colspan="2">
      <dl class="fon11 ddgr mt7 mb5">
      <b>이력서 : <b class="dho">3</b></b>
      <font class="gr">|</font>
      <b>입사지원 : <b class="dho">0</b></b>
      </dl>
      <select onChange="location.href=this.value;" class="selBox" style="width:175">
        <option>바로가기</option>
        <option value="/my/resume_list.html">내이력서 관리</option>
        <option value="/my/a_resume_list.html">알바이력서 관리</option>
        <option value="/my/e_online.html">온라인 입사지원 내역</option>
        <option value="/my/e_email.html">이메일 입사지원 내역</option>
      </select>
      </td></tr>
      <tr align="center"><td colspan="2" height="13"><img src="${allimage}login/login_ln.gif" width="175" height=2 class="vm m0">
      </td></tr>
      <tr align="center" height="20">
        <td colspan="2" align="center" class="fon11 lsm1"><a href="../Cust/logout"><b class=org>로그아웃</b></a> &nbsp;|&nbsp; <a href="../job_user/indiService?m_type=1" class=bk>마이페이지</a></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td><img src="${allimage}login/login_btm.gif"></td>
  </tr>
</table>
<!-- 로그인 후 종료 -->
</c:if>
<c:if test="${sessionScope.CSessionId!=null}">
<!-- 로그인 후 -->
<table width="200" border="0" cellspacing="0" cellpadding="0" background="${allimage}login/login_bg.gif" style="table-layout:fixed">
  <tr>
    <td><img src="${allimage}login/login_top.gif"></td>
  </tr>
  <tr>
    <td align="center" class="gr_bg" style="border-right:1px solid #b3b3b3;border-left:1px solid #b3b3b3">
    <table width="94%" border="0" cellspacing="0" cellpadding="0" bgcolor=#f2f2f2 class="tf">
      <tr height=25>
        <td class="wbg fon11" width="75%"><img src="${allimage}common/ic_m01.gif" class="vm mb2"> <b class="ddgr">${CSessionId} </b>님 안녕하세요.</td>
        <td class="wbg fon11" align="right"><b>[</b>기업<b>]</b></td></tr>
      <tr align="center"><td colspan="2">
      <dl class="fon11 ddgr mt7 mb5">
      <b>이력서 : <b class="dho">3</b></b>
      <font class="gr">|</font>
      <b>입사지원 : <b class="dho">0</b></b>
      </dl>
      <select onChange="location.href=this.value;" class="selBox" style="width:175">
        <option>바로가기</option>
        <option value="/my/resume_list.html">내이력서 관리</option>
        <option value="/my/a_resume_list.html">알바이력서 관리</option>
        <option value="/my/e_online.html">온라인 입사지원 내역</option>
        <option value="/my/e_email.html">이메일 입사지원 내역</option>
      </select>
      </td></tr>
      <tr align="center"><td colspan="2" height="13"><img src="${allimage}login/login_ln.gif" width="175" height=2 class="vm m0">
      </td></tr>
      <tr align="center" height="20">
        <td colspan="2" align="center" class="fon11 lsm1"><a href="../Cust/logout"><b class=org>로그아웃</b></a> &nbsp;|&nbsp; <a href="../job_user/indiService?m_type=2" class=bk>마이페이지</a></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td><img src="${allimage}login/login_btm.gif"></td>
  </tr>
</table>
<!-- 로그인 후 종료 -->
</c:if>
	
