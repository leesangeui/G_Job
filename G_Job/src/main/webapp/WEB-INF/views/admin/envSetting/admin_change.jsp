<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin_top.jsp"%>

<script>
	var change_level = function(val) {

		if (!!val == false) {
			use_level('', '');
		}

		var val_ = val.split("/");

		var uid = val_[0];
		var level = val_[1];

		use_level(uid, level);
	}

	var use_level = function(uid, level) {
		uid = !!uid == false ? '' : uid;

		$("admin_id").value = uid;

		$("change_uid").value = uid;
	<c:if test="${sessionScope.ASessionId}">
		if (uid == '${sessionScope.ASessionId}') {
			$("level").disabled = true;
			return;
		}
	</c:if>

		var disable = !!level == false;

		level = !!level == false ? 0 : level;

		$("level").disabled = disable;

		try {
			$("level").options[level].selected = true;
		} catch (e) {
			alert(e.message);
		}

	}
</script>

<table width="100%" cellpadding="0" cellspacing="0" border="0" id=t_body class="mt10">
	<tr>
		<td class="fon11" align="right">
			<?php include_once '../include/navi.html'; ?>
		</td>
	</tr>
	<tr>
		<td height=30 class="fon13 b"><img src="${allimage}bl/bul_01.gif" align="absmiddle"><img src="${image}tlt_42.gif" align="absmiddle"></td>
	</tr>
	<tr>
		<td height="2" class="bg"></td>
	</tr>

	<!-- 추가 -->
	<tr>
		<td class="pt15" align="center">
			<form name=Form id="Form_regist" method=post action="change" onSubmit="return validate(this)">
				<input type=hidden name=mode value=change_id> <input type="hidden" name="change_uid" id="change_uid" value="${sessionScope.ASessionId}" hname="변경할 아이디" required nofocus>
				<table width="99%" cellpadding="0" cellspacing="0" border="0">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tr>
						<td colspan="4" height="25"><img src="${allimage}bl/bul_04.gif"
							align="absmiddle" width="5"> <b class="bl">현재 아이디/비밀번호</b></td>
					</tr>
					<tr>
						<td colspan="4" class="ln_bl" height="2"></td>
					</tr>
					<tr>
						<td class="pdLlnb1 bg b">아이디</td>
						<td class="pdLlnb2">
							${sessionScope.ASessionId}
						</td>
						<td class="pdLlnb1 bg b">비밀번호</td>
						<td class="pdLlnb2">
							*****
						</td>
					</tr>

					<tr>
						<td class="pt30">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4" height="25"><img src="${allimage}bl/bul_04.gif"
							align="absmiddle" width="5"> <b class="bl">변경하실
								아이디/비밀번호</b></td>
					</tr>
					<tr>
						<td colspan="4" class="ln_bl" height="2"></td>
					</tr>
					<tr>
						<td class="pdLlnb1 bg b">아이디</td>
						<td class="pdLlnb2" colspan="3"><input type=text
							name=admin_id id="admin_id" hname="아이디" required class=text
							value="${sessionScope.ASessionId}" option="userid"></td>
					</tr>
					<tr>
						<td class="pdLlnb1 bg b">새비밀번호</td>
						<td class="pdLlnb2"><input type=password name=passwd
							hname="패스워드" required class=text option="userpw"></td>
						<td class="pdLlnb1 bg b">새비밀번호 확인</td>
						<td class="pdLlnb2"><input type=password name=passwd_re
							hname="패스워드" required class=text option="userpw"></td>
					</tr>

					<tr>
						<td align=center colspan="4" class="pt15"><input type=image
							src=${allimage}btn/btn23_09.gif style="width: 48; height: 23"></td>
					</tr>
					</form>
				</table>
		</td>
	</tr>

</table>
<%@ include file="../../include/admin_botton.jsp"%>