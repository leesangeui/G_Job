<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	input.text{border:1 solid black;}
</style>
<script>
var find_uid = function(){
	var obj = document.find_uid_form;
	if(validate(obj)){
		obj.submit();
	}
}
var find_passwd = function(){
	var obj = document.find_passwd_form;
	if(validate(obj)){
		obj.submit();
	}
}
var make_mail = function(val,chk){
	if(val != true){	    
	    if(chk=='id') {		
		document.find_uid_form.email_tail.value = val;
		}else{
        document.find_passwd_form.email_tail1.value = val;
		}
	} else {
	     if(chk=='id') {		
		document.find_uid_form.email_tail.value.value = '';
		}else{
		document.find_passwd_form.email_tail1.value = '';
		}
	}
}

</script>
<c:set var="FindId" value="${FindId}" scope="request"></c:set> 
<c:set var="FindPw" value="${FindPw}" scope="request"></c:set>  

<table width="740" border="0" cellspacing="0" cellpadding="0">
<tr><td align="right" valign="bottom"><!--네비-->
<div>
		<a href="/" class=navi><img src="${allimage}ic/home.gif" class="f75" style="margin:0 4">Home</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><a href="" class=navi>멤버쉽</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><b class="navi bl">아이디/비밀번호찾기</b>
		</div>
<!--네비--></td></tr>
<tr><td height='30' class="ln_b"><div><img src="${allimage}bl/bul_05.gif" align="top"> <img src="${allimage}tlt/mem_03.gif" align="top"></div></td></tr>
<tr><td class="pt10">
<div class="mt3"><img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3">아이디/비밀번호를 찾고자 하는 회원구분을 선택해 주세요.</div>
<div class="mt3"><img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="3">회원가입시 입력하신 정보가 불충분한 경우 비밀번호를 확인하실 수 없으므로 자세한 문의는 고객센터로 연락하시기 바랍니다.</div> </td></tr>
<tr><td class="pt15">


	<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td class=box01_01></td><td class=box01_02></td><td class=box01_03></td></tr><tr><td class=box01_04></td><td class=box01>
	<div class="mt15 pL7"><img src="${allimage}bl/bul_14.gif" hspace="4" align="absmiddle"><b class="bk lsm1">아이디 찾기</b></div>


		<form name="find_uid_form" method="post" action = "../Cust/FindIdPro" onSubmit="return validate(this);">
		<input type="hidden" name="mode" value="find_uid">
		<table width="97%" border="0" cellspacing="5" cellpadding="0" class="wbg ln_box" style="margin:10;" align="center">
		<colgroup><col width="85"><col><col width="85"><col width="300"></colgroup>		
		<tr>
		<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">이름</td>
		<td class="lnb2"><input type="text" style="width:80%;"  name="name" class=text  hname="이름"  required></td>
		<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">이메일</td>
		<td class="lnb2">
		<input type="text" class=text style="width:25%" name="email"  hname="이메일"  required> @
		<input type="text" class=text style="width:20%"  name="email_tail"  hname="이메일"  required>
		
		<select class="selBox" onChange="make_mail(this.options[selectedIndex].text,'id');">
		<option>직접입력</option>
		<option value='netfu_35670_71728' >hanmail.net</option>
<option value='netfu_65912_25930' >daum.net</option>
<option value='netfu_93985_45133' >naver.com</option>
<option value='netfu_91176_77437' >nate.com</option>
<option value='netfu_46273_82105' >empal.com</option>
<option value='netfu_57162_74926' >lycos.co.kr</option>
<option value='netfu_75371_32015' >paran.com</option>
<option value='netfu_24302_21811' >korea.com</option>
<option value='netfu_49452_30227' >chollian.net</option>
<option value='netfu_94620_61899' >dreamwiz.com</option>
<option value='netfu_81043_87316' >hanmir.com</option>
<option value='netfu_14952_19690' >hanafos.com</option>
		</select>
		</td>

		</tr>	
		<tr>
			<td>
				<input type="radio" class=text  align="absmiddle" class="chk" name="m_type" required value="1">개인회원
			</td>
			<td>
			<input type="radio" class=text align="absmiddle" class="chk" name="m_type" required value="2">기업회원
			</td>
		</tr>	
		<tr><td class="pt15 pb20" align="center"  colspan="4">
		<%-- <img src="${allimage}btn/ok.gif" class="vm png grf_bl">&nbsp; --%>
		<input type="image" src="${allimage}btn/ok.gif" class="vm" style='width:66;height:35' >&nbsp;
		<img src="${allimage}btn/cancel.gif" onClick='reset();'  style="cursor:pointer" class="vm">
		</td>
		</tr>
		</table>
		</form>


	<div><img src="${allimage}common/b.gif" width="1" height="20"></div>
	<div class="mt15 pL7"><img src="${allimage}bl/bul_14.gif" hspace="4" align="absmiddle"><b class="bk lsm1">비밀번호 찾기</b></div>


		<form name="find_passwd_form" method="post" action = "../Cust/FindPwPro" onSubmit="return validate(this);">
		<input type="hidden" name="mode" value="find_passwd">	
		<table width="97%" border="0" cellspacing="5" cellpadding="0" class="wbg ln_box" style="margin:10;" align="center">
		<colgroup><col width="85"><col width="250"><col width="85"><col></colgroup>	
		<tr>
		<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">아이디</td>
		<td class="lnb2"><input type="text" style="ime-mode:disabled;width:80%" name="uid"  hname="아이디"  required class=text></td>
		<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">이름</td>
		<td class="lnb2"><input type="text" style="width:80%" name="name"  hname="이름"  required class=text></td>
		</tr>
		<tr>
		<td class="b lnb2 fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">이메일</td>
		<td colspan="3" class="lnb2"><input type="text" class=text style="width:25%" name="email"  hname="이메일"  required> @ <input type="text" class=text style="width:17%"  name="email_tail1"  hname="이메일"  required> <select class="selBox" onChange="make_mail(this.options[selectedIndex].text,'pw');"><option>직접입력</option><option value='netfu_35670_71728' >hanmail.net</option>
<option value='netfu_65912_25930' >daum.net</option>
<option value='netfu_93985_45133' >naver.com</option>
<option value='netfu_91176_77437' >nate.com</option>
<option value='netfu_46273_82105' >empal.com</option>
<option value='netfu_57162_74926' >lycos.co.kr</option>
<option value='netfu_75371_32015' >paran.com</option>
<option value='netfu_24302_21811' >korea.com</option>
<option value='netfu_49452_30227' >chollian.net</option>
<option value='netfu_94620_61899' >dreamwiz.com</option>
<option value='netfu_81043_87316' >hanmir.com</option>
<option value='netfu_14952_19690' >hanafos.com</option>
</select></td>
		</tr>
		<tr>
		<td class="b lnb2 fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">비밀번호 질문</td>
		<td colspan="3" class="lnb2">
		<select name="password_que" hname="비밀번호 찾기 질문" required  class="selBox"><option>  질문을 선택해주세요 </option><option value='netfu_74718_63948' >나의 좌우명은?</option>
<option value="가장 생각나는 친구 이름은?" >가장 생각나는 친구 이름은?</option>
<option value="기억하고 싶은 날짜는? (예:2000/10/10)" >기억하고 싶은 날짜는? (예:2000/10/10)</option>
<option value="다시 태어나면 되고 싶은 것은?" >다시 태어나면 되고 싶은 것은?</option>
<option value="가장 기억에 남는 장소는?" >가장 기억에 남는 장소는?</option>
<option value="나의 보물 제1호는?" >나의 보물 제1호는?</option>
<option value="가장 기억에 남는 선생님 성함은?" >가장 기억에 남는 선생님 성함은?</option>
<option value="받았던 선물 중 가장 기억에 남는 선물은?" >받았던 선물 중 가장 기억에 남는 선물은?</option>
<option value="인상 깊게 읽은 책 이름은?" >인상 깊게 읽은 책 이름은?</option>
<option value="내가 존경하는 인물은?" >내가 존경하는 인물은?</option>
<option value="내가 좋아하는 만화 캐릭터는?" >내가 좋아하는 만화 캐릭터는?</option>
<option value="초등학교 시절 나의 꿈은?" >초등학교 시절 나의 꿈은?</option>
<option value="우리집 애완동물의 이름은?" >우리집 애완동물의 이름은?</option>
<option value="나의 노래방 애창곡은?" >나의 노래방 애창곡은?</option>
<option value="가장 감명 깊게 본 영화는?" >가장 감명 깊게 본 영화는?</option>
<option value="좋아하는 스포츠 팀 이름은?" >좋아하는 스포츠 팀 이름은?</option>
<option value="가장 여행하고 싶은 나라는?" >가장 여행하고 싶은 나라는?</option>
</select></td>
		</tr>
		<tr>
		<td class="b lnb2 fon11"><img src="${allimage}bl/bul_19.gif" hspace="3" align="absmiddle">비밀번호 답변</td>
		<td colspan="3" class="lnb2">
		<input type="text" style="width:100%" class=text  name="password_chk" hname="비밀번호 찾기 답변" required></td>
		</tr>
		<tr>
			<td>
				<input type="radio" class=text  align="absmiddle" class="chk" name="m_type" required value="1">개인회원
			</td>
			<td>
			<input type="radio" class=text align="absmiddle" class="chk" name="m_type" required value="2">기업회원
			</td>
		</tr>
	
		<tr><td class="pt15 pb20" align="center"  colspan="4">
    <a href="javascript:find_passwd();"><img src="${allimage}btn/ok.gif" class="vm png grf_bl" onclick="FindPws('${FindPw}');"></a>&nbsp; <img src="${allimage}btn/cancel.gif" onClick='reset();'  style="cursor:pointer" class="vm"></td></tr>
		</table>
		</form>


	</td><td class=box01_05></td></tr><tr><td class=box01_06></td><td class=box01_07></td><td class=box01_08></td></tr>
	</table>


</td></tr>
</table></td>
    </tr>
  </table>
  </td></tr>
