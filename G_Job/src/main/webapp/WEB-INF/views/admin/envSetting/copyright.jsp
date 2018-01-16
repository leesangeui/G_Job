<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/admin_top.jsp"%>
<% String code = request.getParameter("code"); %>
<script>
var check_form = function(){
	var inid_introduce = ed.getHtml(); //대체한 textarea에 작성한HTML값 전달
	
	var obj = document.registFm1;
	if(inid_introduce!=""){
		obj.submit();
	}
}
</script>

<table width="100%" cellpadding="0" cellspacing="0" border="0" id=t_body class="mt10">
<tr><td class="fon11" align="right"><?php include_once '../include/navi.html'; ?></td></tr>
<tr><td height=30 class="fon13 b"><img src="${allimage}bl/bul_01.gif" align="absmiddle"><img src="${image}tlt_28.gif" align="absmiddle"></td></tr>
<tr><td height="2" class="bg"></td></tr>

<tr><td class="pt15" align="center">
<table width="99%" border="0" cellspacing="0" cellpadding="0"><tr><td class=box02_01></td><td class=box02_02></td><td class=box02_03></td></tr><tr><td class=box02_04></td><td class="box01 fon11 h16" style="padding:5 5">
 <b>ㆍ</b>사이트 정보를 바탕으로 각종 내용이 표기됩니다. 정확히 입력해 주세요!<br>
 <b>ㆍ</b>사이트 회사소개/하단/이용안내/정보보호 등에서 출력됨으로 정확히 입력해야 합니다.
	</td><td class=box02_05></td></tr><tr><td class=box02_06></td><td class=box02_07></td><td class=box02_08></td></tr></table>
</td></tr>

<!-- 추가 -->
<tr><td class="pt15" align="center">		
	<table width="99%" border="0" cellspacing="0" cellpadding="0"><tr><td class=box071_01></td><td class=box071_02></td><td class=box071_03></td></tr><tr><td class=box071_04></td><td class="bg_bl b" style="padding:10 15">
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./base_environment'>기본설정</a>&nbsp;&nbsp;&nbsp;
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./logo'>로고등록</a>&nbsp;&nbsp;&nbsp;
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=copyright'>카피라이트</a>&nbsp;&nbsp;&nbsp;
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=mail_copyright'>메일 카피라이트</a>&nbsp;&nbsp;&nbsp;
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=agreement'>이용약관</a>&nbsp;&nbsp;&nbsp;
				<!--<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=guide'>이용안내</a>&nbsp;&nbsp;&nbsp; -->
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=privacy'>개인정보취급방침</a>&nbsp;&nbsp;&nbsp;
				<!--<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=privacy2'>개인정보수집 및 안내</a>&nbsp;&nbsp;&nbsp; -->
				<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=company'>회사소개</a>&nbsp;&nbsp;&nbsp;
				
			</td><td class=box071_05></td></tr><tr><td class=box071_06></td><td class=box071_07></td><td class=box071_08></td></tr></table>
</td></tr>
		
<tr><td class="pt15" align="center">	
	<table width="100%" align=center   border="0" >
	<form name="registFm1" id="registFm1" method=post action="./regist">
<input type="hidden" name="mode" value='${code}'>
<tr>
<td height="25"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"><b class="bl">
				
				<% if(code.equals("copyright")){
						out.println("카피라이트");
				}else if(code.equals("mail_copyright")){
					out.println("메일 카피라이트");
					}else if(code.equals("agreement")){
							out.println("회원약관");
					}else if(code.equals("privacy")){
							out.println("개인정보취급방침");
					}else if(code.equals("mem_privacy")){
							out.println("개인정보수집 및 안내");
					}else if(code.equals("company")){
							out.println("company");
					}
				%></b></td></tr>
  <tr><td class="ln_bl" height="2"></td></tr>
<tr><td>
	<textarea name='content' id='content' class="brdtxt" type="editor" style="width:897px;height:500px" hname="내용" required nofocus><c:if test="${code.equals('copyright') }">${dto.site_basic_copyright }</c:if><c:if test="${code.equals('mail_copyright') }">${dto.site_basic_mail_copyright }</c:if><c:if test="${code.equals('agreement') }">${dto.site_basic_agreement }</c:if><c:if test="${code.equals('privacy') }">${dto.site_basic_privacy }</c:if><c:if test="${code.equals('mem_privacy') }">${dto.site_basic_mem_privacy }</c:if><c:if test="${code.equals('company') }">${dto.site_basic_company }</c:if></textarea></td></tr>

<tr><td align='center' class="pt10"><img src=${allimage}btn/btn23_13.gif align="absmiddle" style="width:48; height:23"  onClick="javascript:check_form();"  style="cursor:pointer"></td>
	</tr>
</form>
</table>
 </td></tr>
 </table>
  <script>
var ed = new easyEditor("content");
ed.cfg.imgpath = "${project}easy_editor/img/flat";

ed.init();

</script>
<%@ include file="../../include/admin_botton.jsp"%>