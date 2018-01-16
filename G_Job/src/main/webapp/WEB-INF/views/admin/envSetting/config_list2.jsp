<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin_top.jsp" %>
<c:if test="${type eq 'area' }"><c:set var="c_title" value="지역 설정"/></c:if>
<c:if test="${type eq 'subway' }"><c:set var="c_title" value="역세권 설정"/></c:if>
<c:if test="${type eq 'job' }"><c:set var="c_title" value="채용등록시 직종 설정"/></c:if>
<c:if test="${type eq 'businesstype' }"><c:set var="c_title" value="회원가입시 직종 설정"/></c:if>
<c:if test="${type eq 'job_health' }"><c:set var="c_title" value="복리후생 설정"/></c:if>
<c:if test="${type eq 'preferential' }"><c:set var="c_title" value="우대조건 설정"/></c:if>
<c:if test="${type eq 'job_school' }"><c:set var="c_title" value="채용학력 설정"/></c:if>
<c:if test="${type eq 'job_career' }"><c:set var="c_title" value="경력 설정"/></c:if>
<c:if test="${type eq 'job_pay' }"><c:set var="c_title" value="급여 설정"/></c:if>
<c:if test="${type eq 'job_type' }"><c:set var="c_title" value="근무형태 설정 "/></c:if>
<c:if test="${type eq 'job_recipient' }"><c:set var="c_title" value="접수방식 설정 "/></c:if>
<c:if test="${type eq 'job_state' }"><c:set var="c_title" value="학력 설정 "/></c:if>
<c:if test="${type eq 'job_language' }"><c:set var="c_title" value="언어능력 설정 "/></c:if>
<c:if test="${type eq 'alba_time' }"><c:set var="c_title" value="근무기간 설정 "/></c:if>
<c:if test="${type eq 'alba_week' }"><c:set var="c_title" value="근무요일 설정 "/></c:if>
<c:if test="${type eq 'alba_pay' }"><c:set var="c_title" value="알바급여조건 설정"/></c:if>
<c:if test="${type eq 'email' }"><c:set var="c_title" value="이메일 설정"/></c:if>
<c:if test="${type eq 'biz_list' }"><c:set var="c_title" value="상장여부 설정"/></c:if>
<c:if test="${type eq 'biz_form' }"><c:set var="c_title" value="기업형태 설정"/></c:if>
<c:if test="${type eq 'passchk_list' }"><c:set var="c_title" value="비밀번호 재발급시 질문 설정"/></c:if>
<c:if test="${type eq 'tema' }"><c:set var="c_title" value="알바테마 설정"/></c:if>
<c:if test="${type eq 'head_field' }"><c:set var="c_title" value="헤드헌팅전문분야 설정"/></c:if>
?>

	<table width="100%" border="0" cellspacing="0" cellpadding="0" id=t_body class="mt10">
		<tr>
			<td class="fon11" align="right"><?php include_once '../include/navi.html'; ?></td>
		</tr>
		<tr><td height=30 class="fon13 b"><img src="${allimage}bl/bul_01.gif" align="absmiddle"><img src="${image}tlt_22.gif" align="absmiddle"></td></tr>
		<tr><td height="2" class="bg"></td></tr>
		<tr><td class="pt15" align="center">
				<table width="99%" border="0" cellspacing="0" cellpadding="0">
					<tr><td class=box02_01></td><td class=box02_02></td><td class=box02_03></td></tr>
					<tr><td class=box02_04></td><td class="box01 fon11 h16" style="padding:5 5">
							 <b>ㆍ</b>카테고리설정을 통해 카테고리를 총3차 카테고리까지 추가/수정/삭제 하실 수 있습니다.<br>
							 <b>ㆍ</b>모든 항목을 설정한 후 <b>설정하기버튼을 클릭</b>해야 등록하거나 수정한 내용이 적용됩니다.<BR>
							 <b>ㆍ</b><b>역세권</b>의경우 등록값에 이미지맵 값이 등록되있으므로 삭제하실경우 역세권보기에서 맵링크가 작동하지 않을수 있습니다.
								</td><td class=box02_05></td>
					</tr>
					<tr><td class=box02_06></td><td class=box02_07></td><td class=box02_08></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="pt15"><?php include_once "./sub_top.html";?></td>
		</tr>
		<tr><td class="pt15" align="center">
				<table width="99%" border="0" cellspacing="0" cellpadding="0">
					<colgroup><col width="49%"><col width="2%"><col width="49%">
					<tr><td colspan="5" class="pb5"><img src="${allimage}bl/bul_04.gif" align="absmiddle" width="5"> <b class="bl"><?=$c_title?></b></td></tr>  	
					<tr align="center">
						<td class="ln_box pL7 pr7"><iframe name="b_left" src="config2?type=${type }&level=1&tar=end" height=520 width="100%" frameborder=0></iframe></td><td class="fon9 ddgr">▶</td>
						<td class="ln_box pL7 pr7"><iframe name="b_middle" src="config2?level=2" height=520 width="100%"  frameborder=0></iframe></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<%@ include file="../../include/admin_botton.jsp" %>