
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin_top.jsp"%>
<script>
	function toggle_a(item_ma) {

		if (item_ma.style.display == "none")
			item_ma.style.display = "";
		else
			item_ma.style.display = "none";
	}
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" id=t_body class="mt10">
	<tr>
		<td class="fon11" align="right">
			<?php include_once '../include/navi.html'; ?>
		</td>
	</tr>
	<tr>
		<td height=30 class="fon13 b"><img src="${allimage}bl/bul_01.gif" align="absmiddle"><img src="${image}tlt_28.gif" align="absmiddle"></td>
	</tr>
	<tr>
		<td height="2" class="bg"></td>
	</tr>

	<tr>
		<td class="pt15" align="center">
			<table width="99%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class=box02_01></td>
					<td class=box02_02></td>
					<td class=box02_03></td>
				</tr>
				<tr>
					<td class=box02_04></td>
					<td class="box01 fon11 h16" style="padding: 5 5"><b>ㆍ</b>사이트
						정보를 바탕으로 각종 내용이 표기됩니다. 정확히 입력해 주세요!<br> <b>ㆍ</b>사이트
						회사소개/하단/이용안내/정보보호 등에서 출력됨으로 정확히 입력해야 합니다.<br> <b>ㆍ</b>플래시로고
						등록시 권장사이즈로 제작하시기 바랍니다. 권장사이즈가 아닐시 로고가 깨질수 있습니다.<br> <b>ㆍ</b>E-mail로고를
						플래시로 등록할경우 로고가 출력이 안될수 있으므로 이미지 로고로 등록바랍니다.<br></td>
					<td class=box02_05></td>
				</tr>
				<tr>
					<td class=box02_06></td>
					<td class=box02_07></td>
					<td class=box02_08></td>
				</tr>
			</table>
		</td>
	</tr>

	<!-- 추가 -->
	<tr>
		<td class="pt15" align="center">
			<table width="99%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class=box071_01></td>
					<td class=box071_02></td>
					<td class=box071_03></td>
				</tr>
				<tr>
					<td class=box071_04></td>
					<td class="bg_bl b" style="padding: 10 15">
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./base_environment'>기본설정</a>&nbsp;&nbsp;&nbsp; 
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./logo'>로고등록</a>&nbsp;&nbsp;&nbsp; 
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=copyright'>카피라이트</a>&nbsp;&nbsp;&nbsp; 
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=mail_copyright'>메일 카피라이트</a>&nbsp;&nbsp;&nbsp;
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=agreement'>이용약관</a>&nbsp;&nbsp;&nbsp; 
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=privacy'>개인정보취급방침</a>&nbsp;&nbsp;&nbsp; 
						<img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3"><a href='./copyright?code=company'>회사소개</a>&nbsp;&nbsp;&nbsp;</td>
					<td class=box071_05></td>
				</tr>
				<tr>
					<td class=box071_06></td>
					<td class=box071_07></td>
					<td class=box071_08></td>
				</tr>
			</table>
		</td>
	</tr>

	<tr>
		<td class="pt15" align="center">
			<table width="99%" border="0" cellspacing="0" cellpadding="3">
				<colgroup>
						<col width="33%">
						<col>
						<col width="33%">
					</colgroup>
				<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
							<tr>
								<td height="25"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"> <b class="bl">상단로고 설정(플래시가능)</b></td>
							</tr>
							<tr>
								<td class="ln_bl" height="2"></td>
							</tr>
							<form name=form1 method=post action="regist_photo" enctype="multipart/form-data" onSubmit="return validate(this)">
								<input type=hidden name='mode' value='top_logo'> <input type=hidden name='old_photo' value='${dto.site_basic_top_logo }'>
								<tr>
									<td class="fon11" align="center" height="30"><b>[</b> 권장사이즈 : <font class="num11">220</font>(가로최대) <font class="num11">* 60</font>(세로최대) <b>]</b></td>
								</tr>
								<tr align="center">
									<td height="100">
										<c:if test="${!dto.site_basic_top_logo.isEmpty() }"><img src="${project}upload/logo/${dto.site_basic_top_logo}"></c:if>
									</td>
								</tr>
								<tr height="33">
									<td class="ln_b" align="center"><input type=file name='content' hname="상단로고" required class='text' style="width: 83%"> <input type="image" src=${image}btn19_08.gif align="absmiddle"></td>
								</tr>
							</form>
						</table>
					</td>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
							<tr>
								<td height="25"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"> <b class="bl">mail로고 설정 (플래시 불가능)</b></td>
							</tr>
							<tr>
								<td class="ln_bl" height="2"></td>
							</tr>
							<form name=form2 method=post action="regist_photo" enctype="multipart/form-data" onSubmit="return validate(this)">
								<input type=hidden name='mode' value='mail_top_logo'> <input type=hidden name='old_photo' value='${dto.site_basic_mail_top_logo}'>
								<tr>
									<td class="fon11" align="center" height="30"><b>[</b> 권장사이즈 : <font class="num11">220</font>(가로최대) <font class="num11">* 60</font>(세로최대) <b>]</b></td>
								</tr>
								<tr align="center">
									<td height="100">
									<c:if test="${!dto.site_basic_mail_top_logo.isEmpty() }"><img src="${project}upload/logo/${dto.site_basic_mail_top_logo}"></c:if>
									</td>
								</tr>
								<tr height="33">
									<td class="ln_b" align="center"><input type=file name='content' hname="mail로고" required class='text' style="width: 83%"> <input type="image" src=${image}btn19_08.gif align="absmiddle"></td>
								</tr>
							</form>
						</table>
					</td>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
							<tr>
								<td height="25"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"> <b class="bl">상세페이지로고 설정 (플래시가능)</b></td>
							</tr>
							<tr>
								<td class="ln_bl" height="2"></td>
							</tr>
							<form name=form3 method=post action="regist_photo" enctype="multipart/form-data" onSubmit="return validate(this)">
								<input type=hidden name='mode' value='detail_logo'> <input type=hidden name='old_photo' value='${dto.site_basic_detail_logo}'>
								<tr>
									<td class="fon11" align="center" height="30"><b>[</b> 권장사이즈 : <font class="num11">154</font>(가로최대) <font class="num11">* 42</font>(세로최대) <b>]</b></td>
								</tr>
								<tr align="center">
									<td height="100">
									<c:if test="${!dto.site_basic_detail_logo.isEmpty() }"><img src="${project}upload/logo/${dto.site_basic_detail_logo}"></c:if>
									</td>
								</tr>
								<tr height="33">
									<td class="ln_b" align="center"><input type=file name='content' hname="상세보기로고" required class='text' style="width: 83%"> <input type="image" src=${image}btn19_08.gif align="absmiddle"></td>
								</tr>
							</form>
						</table>
					</td>
				</tr>
				<tr style="padding-top: 10">
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
							<tr>
								<td height="25"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"> <b class="bl">하단로고 설정 (플래시가능)</b></td>
							</tr>
							<tr>
								<td class="ln_bl" height="2"></td>
							</tr>
							<form name=form4 method=post action="regist_photo" enctype="multipart/form-data" onSubmit="return validate(this)">
								<input type=hidden name='mode' value='footer_logo'> <input type=hidden name='old_photo' value='${dto.site_basic_footer_logo }'>
								<tr>
									<td class="fon11" align="center" height="30"><b>[</b> 권장사이즈 : <font class="num11">180</font>(가로최대) <font class="num11">* 60</font>(세로최대) <b>]</b></td>
								</tr>
								<tr align="center">
									<td height="100">
									<c:if test="${!dto.site_basic_footer_logo.isEmpty() }"><img src="${project}upload/logo/${dto.site_basic_footer_logo}"></c:if>
									</td>
								</tr>
								<tr height="33">
									<td class="ln_b" align="center"><input type=file name='content' hname="하단로고" required class='text' style="width: 83%"> <input type="image" src=${image}btn19_08.gif align="absmiddle"></td>
								</tr>
							</form>
						</table>
					</td>
					<td>
					
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
							<tr>
								<td height="25"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"> <b class="bl">mail하단로고 설정 (플래시불가능)</b></td>
							</tr>
							<tr>
								<td class="ln_bl" height="2"></td>
							</tr>
							<form name=form5 method=post action="regist_photo" enctype="multipart/form-data" onSubmit="return validate(this)">
								<input type=hidden name='mode' value='mail_footer_logo'> <input type=hidden name='old_photo' value='${dto.site_basic_mail_footer_logo }'>
								<tr>
									<td class="fon11" align="center" height="30"><b>[</b> 권장사이즈 : <font class="num11">171</font>(가로최대) <font class="num11">* 91</font>(세로최대) <b>]</b></td>
								</tr>
								<tr align="center">
									<td height="100">
									<c:if test="${!dto.site_basic_mail_footer_logo.isEmpty() }"><img src="${project}upload/logo/${dto.site_basic_mail_footer_logo}"></c:if>
									</td>
								</tr>
								<tr height="33">
									<td class="ln_b" align="center"><input type=file name='content' hname="mail하단로고" required class='text' style="width: 83%"> <input type="image" src=${image}btn19_08.gif align="absmiddle"></td>
								</tr>
							</form>
						</table>
					</td>
					<td></td>
				</tr>
			</table>

		</td>
	</tr>
	<tr>
		<td class="pt15" align="center"></td>
	</tr>
	<tr>
		<td class="pt15" align="center"></td>
	</tr>
</table>

<%@ include file="../../include/admin_botton.jsp"%>