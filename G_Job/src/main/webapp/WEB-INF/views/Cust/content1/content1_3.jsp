<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<tr><td class=pt10>
  <table width="950" border="0" cellspacing="0" cellpadding="0" align="center"><tr valign="top">
 	
 <!-- 컨텐츠 왼쪽 사이드 메뉴 시작 -->	
 		<td width="200"><table border="0" cellspacing="0" cellpadding="0">
 <tr><td>

<!--로그인 후-->

<!-- 로그인 테이블 호출 -->
<%@ include file="../login/login.jsp"%>
<!-- 로그인 테이블 종료 -->
</td></tr>
 <tr><td class="pt7"><img src="${allimage}bl/leftmn_01.gif"></td></tr>
 
 <tr><td background="${allimage}bl/leftmn_06.gif" style="padding:0 6">
  <!-- 메뉴 -->  
    <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
     <tr><td style="background:url(${allimage}bl/leftmn_02.gif) no-repeat top; padding:11 5 14 5; height:60" valign="top"><img src="${allimage}common/tlt_my.png" class="png24"></td></tr>
     <tr><td style="padding:0 6" background="${allimage}bl/leftmn_04.gif" valign="top">
    
    <table width="95%" border="0" cellspacing="0" cellpadding="5" align="center">
    <!-- 개인회원 -->  
     <tr><td class="ln_b"><img src="${allimage}basic/bul_11.gif" align="absmiddle"> <b class="bk">회원정보 관리</b></td></tr>
     <tr><td class="fon11 lbg h16"><a href="../job_user/Minfomation?m_type=1">- 개인정보 수정</a><br><a href="./pay.html">- 결제내역조회</a>
     </td></tr>     
     <tr>
       <td class="ln_b"><img src="${allimage}basic/bul_11.gif" align="absmiddle"> <b class="bk">이력서 관리</b></td></tr>
     <tr><td class="fon11 lbg h16"><a href="./resume.html">- 이력서등록</a><br><a href="./resume_list.html">- 이력서관리</a><br>
     <a href="./res_contact.html">- 내이력서 열람기업</a><br><a href="./res_limit.html">- 열람제한 기업설정</a>
     </td></tr>
     <tr><td class="ln_b"><img src="${allimage}basic/bul_11.gif" align="absmiddle"> <b class="bk">입사지원 관리</b></td></tr> 
     <tr><td class="fon11 lbg h16"><a href="./e_online.html">- 온라인입사지원</a><br><a href="./e_email.html">- 이메일입사지원</a><br><a href="./e_proof.html">- 취업활동증명서</a>
     </td></tr>         
     <tr><td class="ln_b"><img src="${allimage}basic/bul_11.gif" align="absmiddle"> <b class="bk">채용정보검색</b></td></tr>
     <tr><td class="fon11 lbg h16"><a href="./e_request.html">- 입사지원 요청기업</a><br><a href="./e_interview.html">- 면접제의 요청기업</a><br>	  
		<a href="./e_scrap.html">- 채용정보 스크랩</a><br>
				<a href="./hfavor.html">- 서치펌정보 스크랩</a><br>
		<a href="./favorco.html">- 관심기업 채용현황</a>
     </td></tr>     
     <tr><td class="ln_b"><img src="${allimage}basic/bul_11.gif" align="absmiddle"> <b class="bk">맞춤채용정보</b></td></tr>  
     <tr>
       <td class="fon11 lbg h16"><a href="./e_order.html">- 맞춤채용정보</a><br><a href="./control.html">- My 서비스설정</a>
     </td></tr>   
	 
     <tr><td class="ln_b"><img src="${allimage}basic/bul_11.gif" align="absmiddle"> <b class="bk">아르바이트 구직관리</b></td></tr>     
     <tr>
       <td class="fon11 lbg h16">
		<a href="./a_resume.html">- 알바이력서등록</a><br>
		<a href="./a_resume_list.html">- 알바이력서관리</a>
		<!--<br><a href="./a_apply.html">- 알바온라인입사지원</a>-->
     </td></tr> 
    </table>
    
   </td></tr>
   <tr><td><img src="${allimage}bl/leftmn_05.gif"></td></tr>
   
   <tr><td class="pt7"><table border="0" cellspacing="0" cellpadding="0" background="${allimage}common/leftcs_06.gif">
<tr><td><img src="${allimage}common/leftcs_01.gif" width="188" height="34"></td></tr>
<tr><td class="txt_cs2 bl">1544-9638</td></tr>
<tr><td><img src="${allimage}common/leftcs_03.gif"></td></tr>
<tr><td><a href="/etc/cscenter.html"><img src="${allimage}common/leftcs_04.gif"></a></td></tr>
</table>
</td></tr>
   
   </table>  
  <!-- 메뉴 -->     
  
</td></tr>
<tr><td valign="bottom"><img src="${allimage}bl/leftmn_07.gif" width="200" height="6"></td></tr>
</table>

</td>

<!-- 컨텐츠 왼쪽 사이드 메뉴 종료 -->
  <td class=pL10>
	<!-- 컨텐츠 중앙 호출-->
		<script src='../easy_editor/easyEditor.js'></script>
<script>
//메일 설정 하는 부분
var make_mail = function(val){
	if(!!val == true){
		//$('email_tail').style.display='none';
		$('email_tail').value = val;
	} else {
		//$('email_tail').style.display='';
		$('email_tail').value = '';
	}
}
var biz_make_mail = function(val){
	if(!!val == true){
		//$('email_tail').style.display='none';
		$('biz_email_tail').value = val;
	} else {
		//$('email_tail').style.display='';
		$('biz_email_tail').value = '';
	}
}

function chk(num){
	if(num==1){
		input_photo.document.getElementById('mode').value='dphoto1';
		input_photo.document.getElementById('old_photo1').value=document.getElementById('old_photo1').value;
	}else if(num==2){
		input_photo.document.getElementById('mode').value='dphoto2';
		input_photo.document.getElementById('old_photo2').value=document.getElementById('old_photo2').value;
	}else if(num==3){
		input_photo.document.getElementById('mode').value='dphoto3';
		input_photo.document.getElementById('old_photo3').value=document.getElementById('old_photo3').value;
	}else if(num==4){
		input_photo.document.getElementById('mode').value='dphoto4';
		input_photo.document.getElementById('old_photo4').value=document.getElementById('old_photo4').value;
	}
	input_photo.document.regist_ptoto_form.submit();
}
var go_regist_a = function(){
	if(validate($("regist_form__"))){
		$("regist_form__").submit();
	}
}


// 신주소 (도로명 주소)
var new_addresses = function( vals ){
	var sel = vals.value;
	jQuery('.addresWrap').hide();
	if(sel==1){
		jQuery('#new_address_block').show();
		jQuery('#post1,#post2,#address1,#address2').removeAttr('required');
		jQuery('#new_post1,#new_post2,#new_address1,#new_address2').attr('required',true);
	} else {
		jQuery('#old_address_block').show();
		jQuery('#post1,#post2,#address1,#address2').attr('required',true);
		jQuery('#new_post1,#new_post2,#new_address1,#new_address2').removeAttr('required');
	}
}

// 회사주소 (도로명 주소)
var new_company_addresses = function( vals ){
	var sel = vals.value;
	jQuery('.company_addresWrap').hide();
	if(sel==1){
		jQuery('#new_company_address_block').show();
		jQuery('#biz_post,#biz_post2,#biz_address1,#biz_address2').removeAttr('required');
		jQuery('#new_biz_post,#new_biz_post2,#new_biz_address1,#new_biz_address2').attr('required',true);
	} else {
		jQuery('#old_company_address_block').show();
		jQuery('#biz_post,#biz_post2,#biz_address1,#biz_address2').attr('required',true);
		jQuery('#new_biz_post,#new_biz_post2,#new_biz_address1,#new_biz_address2').removeAttr('required');
	}
}


</script>
<!-- <script src='../easy_editor/easyEditor.js'></script> -->


<table width="740" border="0" cellspacing="0" cellpadding="0">
<form name="regist_form__" id="regist_form__"  enctype="multipart/form-data" id="regist_form__" method="post" action = "../job_user/ModifyInfo">
<input type="hidden" name="mode" value="update">
<input type="hidden" name="uid" value="${vo.userid }">
<input type="hidden" name="is_admin" value="/my/modify.html">
<input type="hidden" name="m_type" value="1">
<tr>
<td align="right" valign="bottom"><!--네비-->
<div>
		<a href="/" class=navi><img src="${allimage}ic/home.gif" class="f75" style="margin:0 4">Home</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><a href="" class=navi>마이페이지</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><b class="navi bl">정보수정</b>
		</div>
<!--네비--></td>
</tr>
<tr>
<td height='30' class="ln_b pL7"><div><img src="${allimage}bl/bul_05.gif" align="top"> <img src="${allimage}tlt/my_02.gif" align="top"></div></td>
</tr>
<tr>
<td class="pt15">


	<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	<colgroup><col width="21%"><col></colgroup>
	<tr>
	<td colspan="2" class="pL3 pb3"><div style="position:relative; width:100%"><img src="${allimage}bl/bul_15.gif" style="vertical-align:middle"> <b>기본정보</b> <font class="fon11">( <img src="${allimage}bl/bul_06.gif" width="7" style="vertical-align:middle"> 표시는 필수 입력사항입니다.)</font>
	<span style="position:absolute;bottom:0;right:0"><a href="../delete"><img src="${allimage}btn/19_out.gif"></a></span></div></td>
	</tr>
	<tr height="2">
	<td class="ln_bl"></td><td class="f50 ln_bl"></td>
	</tr>
	<tr height="30"> 
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">이름</td>
	<td class="ln_b pL7" style="position:relative">${vo.uname}<input type="hidden" name="name" value="${vo.uname }">
		<div style="position:relative"><div class="wbg ln_l" style=" position:absolute;width:282;right:0;top:-14;padding-top:13;height:239" align="center">
	<div class="ln_box" style="width:128;height:150;*width:126;*height:148;" align="center"><div class="ln_box" style="margin:3;width:120;height:142;"><img id="imagesa" src="/peg/detail3_netfu_29881_40004.jpg"   ></div></div>
	<div class=mt10 align="center">								
		<iframe src="./photo2.html?uid=test_indi1&old_photo=netfu_29881_40004.jpg&type=1" name="input_photo" height="55" width="100%" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" ></iframe>
							
	</div>
	</div></div>
		</td>
	</tr>
	<!--
	<tr height="30">
	<td class="bg_bl ln_b b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">주민등록번호</td>
	<td class="ln_b pL7 num">1234** - *******</td>
	</tr>
	-->
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">아이디</td>
	<td class="ln_b pL7 num"><b>${vo.userid }</b></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호</td>
	<td class="ln_b pL7"><input type="password" style="ime-mode:disabled;width:30%" class=text name="passwd_old" required></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">새비밀번호</td>
	<td class="ln_b pL7"><input type="password" style="ime-mode:disabled;width:30%" class=text name="passwd"></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">새비밀번호확인</td>
	<td class="ln_b pL7 gr lsm1"><input type="password" style="ime-mode:disabled;width:30%" name="passwdre" class=text></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호 재발급시 질문</td>
	<td class="ln_b pL7 gr lsm1">
	<select class="selBox" hname="비밀번호 재발급질문" required name="password_que">
	<option> = 질문을 선택해주세요 =</option>
	<option value='netfu_74718_63948' >나의 좌우명은?</option>
<option value='netfu_39070_98166' >가장 생각나는 친구 이름은?</option>
<option value='netfu_96772_72511' >기억하고 싶은 날짜는? (예:2000/10/10)</option>
<option value='netfu_41622_51289' >다시 태어나면 되고 싶은 것은?</option>
<option value='netfu_74017_93284' >가장 기억에 남는 장소는?</option>
<option value='netfu_82179_90179' >나의 보물 제1호는?</option>
<option value='netfu_70241_34554' >가장 기억에 남는 선생님 성함은?</option>
<option value='netfu_41203_18962' >받았던 선물 중 가장 기억에 남는 선물은?</option>
<option value='netfu_10655_50881' >인상 깊게 읽은 책 이름은?</option>
<option value='netfu_89086_83700' >내가 존경하는 인물은?</option>
<option value='netfu_64847_81387' >내가 좋아하는 만화 캐릭터는?</option>
<option value='netfu_18453_26425' >초등학교 시절 나의 꿈은?</option>
<option value='netfu_97238_27324' >우리집 애완동물의 이름은?</option>
<option value='netfu_68087_35475' >나의 노래방 애창곡은?</option>
<option value='netfu_49979_54048' >가장 감명 깊게 본 영화는?</option>
<option value='netfu_72325_78474' >좋아하는 스포츠 팀 이름은?</option>
<option value='netfu_65068_77370' >가장 여행하고 싶은 나라는?</option>
	</select>
	</td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호 재발급시 답변</td>
	<td class="ln_b pL7 gr lsm1"><input type="text" style="width:50%" hname="비밀번호재발급답변" required name="password_chk" class=text value="가즈오의나라"></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">생년월일</td>
	<td class="ln_b pL7"><input type="text" style="width:40px" maxlength=4 name="birth_year" class=text value="${birth_year }"> <label>년</label>&nbsp;<input type="text" style="width:25px" name="birth_month" maxlength=2 class=text value="${birth_month }"> <label>월</label>&nbsp;<input type="text" style="width:25px" name="birth_day" maxlength=2 class=text value="${birth_day }"> <label>일</label></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">성별</td>
	<td class="ln_b pL7"><input type="radio" class=chk name="sex" value="man" checked>남 &nbsp; <input type="radio" class=chk name="sex" value="woman" >여</td>
	</tr>
		<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">사진공개여부</td>
	<td class="ln_b pL7">
	<input type="radio" class=chk name="p_chk" value="no" checked>공개 &nbsp;
	<input type="radio" class=chk name="p_chk" value="yes" >비공개
	</td>
	</tr>
			<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">홈페이지</td>
	<td class="ln_b pL7"><input type="text" class=text style="width:50%" name="home" hname="홈페이지"  value="${home}"></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이메일</td>
	<td class="ln_b pL7">
	<input type="text" class=text style="width:25%" name="email" hname="이메일" required value="${email[0]}"> <label>@</label> <input type="text" class=text style="width:17%" hname="이메일" required name="email_tail" id="email_tail" value="${email[1]}">
	<select name = "email_select" onChange="make_mail(this.options[selectedIndex].text);" class="selBox" style="width:80;">
	<option value="">직접입력</option>
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
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이메일 수신여부</td>
	<td class="ln_b pL7"><input type="radio" class=chk  name="use_mail" value="yes" checked>동의함 &nbsp; <input type="radio" class=chk  name="use_mail" value="no" >동의안함</td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">휴대폰</td>
	<td class="ln_b pL7 gr"><input type="text" style="width:40px" class=text maxlength="3" name="hphone1" value="${Hphone[0]}"  hname="휴대폰" required> - <input type="text" style="width:40px" class=text maxlength="4" name="hphone2" hname="휴대폰" required value="${Hphone[1]}"> - <input type="text" style="width:40px" class=text maxlength="4" name="hphone3" hname="휴대폰" required value="${Hphone[2]}"></td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">SMS 수신여부</td>
	<td class="ln_b pL7"><input type="radio" class=chk  name="use_sms" value="yes" checked>동의함 &nbsp; <input type="radio" class=chk  name="use_sms" value="no" >동의안함</td>
	</tr>
	<tr height="30">
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">연락처</td>
	<td class="ln_b pL7 gr"><input type="text" style="width:40px" class=text maxlength="4" name="phone1" value="${phone[0] }"> - <input type="text" style="width:40px" class=text maxlength="4" name="phone2" value="${phone[1] }"> - <input type="text" style="width:40px" class=text maxlength="4" name="phone3" value="${phone[2] }"></td>
	</tr>
	<tr>
	<td class="bg_bl ln_b pL7 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">주소</td>
	<td class="ln_b pL7 gr" style="padding:5 7">
		<div class="pb10">
			<!-- <input type="radio" name="new_address" id="new_address_1" class="chk" value="1" onclick="new_addresses(this);" onfocus="blur();" /><label for="new_address_1">도로명 주소</label>&nbsp; -->
		</div>
		<div class="addresWrap" id="new_address_block" >
			<input type="text" name="new_post1"  id="new_post1"  class=text readonly style="width:45px" maxlength=5 option="number" value="${vo.post }"  hname="주소"  onKeyUp="netfu_util.onlyDigit(this);"><a href="javascript://" onClick="netfu_util.new_searchPost();">&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="${allimage}btn/post.gif" align="absmiddle"></span></a>
			<div class="mt3"><input type="text" name="new_address1" id="new_address1" style="width:49%" hname="주소"  class=text value="${vo.address1 }"> <input type="text" name="new_address2"  id="new_address2" style="width:49%" hname="주소"  class=text value="${vo.address2 }">
			</div>
		</div>
	</td>
	</tr>
		</table>



 
</td>
</tr>
<tr>
<td class="pt15 pb20" align="center"><a href="javascript:go_regist_a();"><img src="${allimage}btn/ok.png" class="vm png grf_bl"></a>&nbsp; <a href="javascript:history.go(-1);"><img src="${allimage}btn/cancel.gif" class="vm"></a></td>
</tr>
</form>
</table>
		
	<!-- 컨텐츠 중앙 종료 -->
</td> 
  </tr></table>
  </td></tr>
