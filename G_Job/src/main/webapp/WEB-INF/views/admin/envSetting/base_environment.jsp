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
			<?php include_once '../include/navi'; ?>
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
						회사소개/하단/이용안내/정보보호 등에서 출력됨으로 정확히 입력해야 합니다.</td>
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
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">타이틀명 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form1 method=post action=./regist
					onSubmit="return validate(this)">
					<input type=hidden name='mode' value='title'>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_title }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 타이틀명입력</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="타이틀명" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>
	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">도메인명 설정</b> <font class="fon11 gr">(도메인명을
							입력하지않으면 자동발송되는 메일의 이미지가 깨져서 보이게되니 반드시 입력하세요)</font></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form2 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value="domain">
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_domain }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 도메인명입력</td>
						<td class="pdLlnb1"><input type=text name='content'
							hname="도메인명" required class='text' style="width: 80%"> <b>[</b>
							http:// 포함<b>]</b>
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>
	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">메일발송시 사이트명 설정</b> <font class="fon11 gr">(사이트명은
							메일발송시 발송자의 이름으로 출력되며 다용도로 사용됩니다.</font></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form3 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value="name">
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_name }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 사이트명입력</td>
						<td class="pdLlnb1"><input type=text name='content'
							hname="사이트명" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>


	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">관리자이메일 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form4 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=email>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_email }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 이메일입력</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="이메일" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>


	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">고객센터번호 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form5 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=call_center>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_call_center }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 고객센터번호입력</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="고객센터" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>

	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">핸드폰 번호 설정 (SMS발송시 회신할 전화번호를 입력해주십시오.)</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form6 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value="hphone">
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_hphone }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 핸드폰 번호입력</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="핸드폰 번호" required class='text' style="width: 93%"
							option="hphone">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>


	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">즐겨찾기 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form7 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=favorite>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 입력된 내용</td>
						<td class="pdLlnb1">
							${dto.site_basic_favorite }
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 이름입력</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="즐겨찾기" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>
	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">입사지원 이력서 내용보기 기간 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form10 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=resume>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 기간설정</td>
						<td class="pdLlnb1">
							${dto.site_basic_resume }일
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 기간입력(일)</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="기간입력" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>

	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">채용공고 게재 기간 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form11 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=u_date>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 기간설정</td>
						<td class="pdLlnb1">
							${dto.site_basic_u_date }일
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 기간입력(일)</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="기간입력" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>


	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">마감된 채용공고 보관기간 설정</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form11 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=d_date>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 기간설정</td>
						<td class="pdLlnb1">
							${dto.site_basic_d_date }일
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 기간입력(일)</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="기간입력" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>
	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">TODAY 실시간 정보 설정(미사용시 배너 출력)</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>
				<form name=form11 method=post action=regist
					onSubmit="return validate(this)">
					<input type=hidden name=mode value=today_chk>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 사용여부</td>
						<td class="pdLlnb1"><input type=radio class=chk name='content' value="yes" checked >
							사용&nbsp;&nbsp;<input type=radio class=chk name='content'
							value="no"  <c:if test="${dto.site_basic_today_chk.equals('no') }">checked </c:if>> 미사용
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div>
					</tr>
				</form>
			</table>
		</td>
	</tr>
	<tr>
		<td class="pt30" align="center">
			<table cellpadding="0" cellspacing="0" border="0" width="99%"
				style="table-layout: fixed">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tr>
					<td colspan="2" height="25"><img
						src="${allimage}bl/bul_04.gif" align="absmiddle" width="5">
						<b class="bl">공지사항 출력 갯수</b></td>
				</tr>
				<tr>
					<td colspan="2" class="ln_bl" height="2"></td>
				</tr>

				<form name=form11 method=post action=regist onSubmit="return validate(this)">
					<input type=hidden name=mode value=notice_num>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 출력갯수</td>
						<td class="pdLlnb1">
							${dto.site_basic_notice_num}
						</td>
					</tr>
					<tr height="33">
						<td class="pdLlnb1 bg b"><img src="${allimage}bl/bul_19.gif"
							align="absmiddle"> 출력갯수</td>
						<td class="pdLlnb1"><input type=text name='content' size='60'
							hname="출력갯수" required class='text' style="width: 93%">
							<div
								style="position: relative;  left: 92%; float: left; width: 50">
								<input type="image" src=${image}btn19_08.gif align="absmiddle">
							</div></td>
					</tr>
				</form>
			</table>
		</td>
	</tr>
</table>
<%@ include file="../../include/admin_botton.jsp"%>