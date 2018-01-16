<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<tr>
<td class=pt10>
<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
   <tr valign="top">   
   <!-- 컨텐츠 왼쪽 사이드 메뉴 시작 -->   
   <%@ include file="./CmypageMenu.jsp" %>
   <!-- 컨텐츠 왼쪽 사이드 메뉴 종료 -->
   <!-- 기업정보 수정 -->   
   <td class=pL10><script src='${project}easy_editor/easyEditor.js'></script>
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
   // 01-16 이상의 수정
   	
   
   }
   
   function pwd_chk(){
   		
	   if(document.regist_form.passwd.value || document.regist_form.passwdre.value){
		   if(document.regist_form.passwd.value != document.regist_form.passwdre.value){
			   alert("입력하신 새 비밀번호와 재입력이 일치하지 않습니다.");
			   return false;
		   }
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
       var biz_vision = ed.getHtml(); //대체한 textarea에 작성한HTML값 전달
      var biz_history = ed1.getHtml(); //대체한 textarea에 작성한HTML값 전달
      if(validate($("regist_form__"))){
         $("regist_form__").submit();
      }
   }
   </script>
   <script src='${project}easy_editor/easyEditor.js'></script>
   <script src="${js}join.js"></script>
      <table width="740" border="0" cellspacing="0" cellpadding="0">
      <form name="regist_form" id="regist_form__"  enctype="multipart/form-data" id="regist_form__" method="post" action = "../job_user/ModifyInfo" onsubmit="return pwd_chk();">
         <input type="hidden" name="mode" value="update">
         <input type="hidden" name="uid" value="${vo.userid}">
         <input type="hidden" name="is_admin" value="/my/modify.html">
         <input type="hidden" name="m_type" value="2">
         <tr>
            <td align="right" valign="bottom"><!--네비-->
               <div>
                  <a href="/" class=navi><img src="${allimage}ic/home.gif" class="f75" style="margin:0 4">Home</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><a href="" class=navi>마이페이지</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><b class="navi bl">정보수정</b>
               </div>
            </td><!--네비 끝-->
         </tr>
         <tr>
            <td height='30' class="ln_b pL7">
               <div>
                  <img src="${allimage}bl/bul_05.gif" align="top"> 
                  <img src="${allimage}tlt/my_02.gif" align="top">
               </div>
            </td>
         </tr>
         <tr>
            <td class="pt15">
               <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                  <colgroup><col width="21%"><col></colgroup>
                  <tr><td colspan="2" class="pL3 pb3">
                     <div style="position:relative; width:100%">
                        <img src="${allimage}bl/bul_15.gif" style="vertical-align:middle"> 
                        <b>기본정보</b> 
                        <font class="fon11">
                           ( <img src="${allimage}bl/bul_06.gif" width="7" style="vertical-align:middle"> 표시는 필수 입력사항입니다.)
                        </font>
                        <span style="position:absolute;bottom:0;right:0">
                           <a href="../delete?m_type=${m_type}">
                              <img src="${allimage}btn/19_out.gif">
                           </a>
                        </span>
                     </div>
                  </td></tr>
                  <tr height="2">
                     <td class="ln_bl"></td>
                     <td class="f50 ln_bl"></td>
                  </tr>
                  <tr height="30"> 
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">이름
                     </td>
                     <td class="ln_b pL7" style="position:relative">${vo.uname}
                        <input type="hidden" name="name" value="${vo.uname}">
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">아이디
                     </td>
                     <td class="ln_b pL7 num"><b>${vo.userid}</b></td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호
                     </td>
                     <td class="ln_b pL7">
                        <input type="password" style="ime-mode:disabled;width:30%" class=text name="passwd_old" required>
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">새비밀번호
                     </td>
                     <td class="ln_b pL7">
                        <input type="password" style="ime-mode:disabled;width:30%" class=text name="passwd">
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">새비밀번호확인
                     </td>
                     <td class="ln_b pL7 gr lsm1">
                        <input type="password" style="ime-mode:disabled; width:30%" name="passwdre" class=text>
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호 재발급시 질문
                     </td>
                     <td class="ln_b pL7 gr lsm1">
                        <select class="selBox" hname="비밀번호 재발급질문" required name="password_que">
                           <option value=''>= 질문을 선택해주세요 =</option>
                           <option value='netfu_74718_63948' >나의 좌우명은?</option>
                           <option value='netfu_39070_98166' selected>가장 생각나는 친구 이름은?</option>
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
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호 재발급시 답변
                     </td>
                     <td class="ln_b pL7 gr lsm1">
                        <input type="text" style="width:50%" hname="비밀번호재발급답변" required name="password_chk" class=text value="${vo.password_chk}">
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">생년월일
                     </td>
                     <td class="ln_b pL7">
                        <input type="text" style="width:40px" maxlength=4 name="birth_year" class=text value="${vo.birth_year}"> <label>년</label>&nbsp;
                        <input type="text" style="width:25px" name="birth_month" maxlength=2 class=text value="${vo.birth_month}"> <label>월</label>&nbsp;
                        <input type="text" style="width:25px" name="birth_day" maxlength=2 class=text value="${vo.birth_day}"> <label>일</label>
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">성별
                     </td>
                     <td class="ln_b pL7">
                        <input type="radio" class=chk name="sex" value="man" checked>남 &nbsp; 
                        <input type="radio" class=chk name="sex" value="woman" >여
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">홈페이지
                     </td>
                     <td class="ln_b pL7">
                        <input type="text" class=text style="width:50%" name="home" hname="홈페이지"  value="${vo.home}">
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이메일
                     </td>
                     <td class="ln_b pL7">
                        <input type="text" class=text style="width:25%" name="email" hname="이메일" required value="${vo.email1}"> 
                        <label>@</label> 
                        <input type="text" class=text style="width:17%" hname="이메일" required name="email_tail" id="email_tail" value="${vo.email2}">
                        <select name = "email_select" onChange="make_mail(this.options[selectedIndex].text);" class="selBox" style="width:80;">
                           <option value="">직접입력</option>
                           <option value='hanmail.net' >hanmail.net</option>
                           <option value='daum.net' >daum.net</option>
                           <option value='naver.com' >naver.com</option>
                           <option value='nate.com' >nate.com</option>
                           <option value='empal.com' >empal.com</option>
                           <option value='lycos.co.kr' >lycos.co.kr</option>
                           <option value='paran.com' >paran.com</option>
                           <option value='korea.com' >korea.com</option>
                           <option value='chollian.net' >chollian.net</option>
                           <option value='dreamwiz.com' >dreamwiz.com</option>
                           <option value='hanmir.com' >hanmir.com</option>
                           <option value='hanafos.com' >hanafos.com</option>
                        </select>
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이메일 수신여부
                     </td>
                     <td class="ln_b pL7">
                        <input type="radio" class=chk  name="use_mail" value="yes" checked>동의함 &nbsp; 
                        <input type="radio" class=chk  name="use_mail" value="no" >동의안함
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">휴대폰
                     </td>
                     <td class="ln_b pL7 gr">
                        <input type="text" style="width:40px" class=text maxlength="3" name="hphone1" value="${vo.hphone1}"  hname="휴대폰" required> - 
                        <input type="text" style="width:40px" class=text maxlength="4" name="hphone2" hname="휴대폰" required value="${vo.hphone2}"> - 
                        <input type="text" style="width:40px" class=text maxlength="4" name="hphone3" hname="휴대폰" required value="${vo.hphone3}">
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">SMS 수신여부
                     </td>
                     <td class="ln_b pL7">
                        <input type="radio" class=chk  name="use_sms" value="yes" checked>동의함 &nbsp; 
                        <input type="radio" class=chk  name="use_sms" value="no" >동의안함
                     </td>
                  </tr>
                  <tr height="30">
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">연락처
                     </td>
                     <td class="ln_b pL7 gr">
                        <input type="text" style="width:40px" class=text maxlength="4" name="phone1" value="${vo.phone1}"> - 
                        <input type="text" style="width:40px" class=text maxlength="4" name="phone2" value="${vo.phone2}"> - 
                        <input type="text" style="width:40px" class=text maxlength="4" name="phone3" value="${vo.phone3}">
                     </td>
                  </tr>
                  <tr>
                     <td class="bg_bl ln_b pL7 b fon11">
                        <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">주소
                     </td>
                     <td class="ln_b pL7 gr" style="padding:5 7">
                        <input type="text" name="post" id="post" class="text" readonly style="width:50px" hname="주소" maxlength="5" value="${vo.post}">
                        <span>
                              <img src="${allimage}btn/post.gif" onclick="searchPostcode();" style="cursor:pointer; vertical-align:bottom;">
                        </span>   
                        <div class="mt3">
                              <input type="text" name="address1" id="address1" style="width:49%" hname="주소" class="text" value="${vo.address1}"> 
                              <input type="text" name="address2" id="address2" style="width:49%" hname="주소" class="text" value="${vo.address2}">
                        </div>   
                     </td>
                  </tr>
               </table>
               <div style="margin-top:30">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                     <colgroup><col width="20%"><col width="30%"><col width="20%"><col width="30%"></colgroup>
                     <tr>
                        <td colspan="4" class="pL3 pb3">
                           <img src="${allimage}bl/bul_15.gif" align="absmiddle"> 
                           <b>기업회원정보</b> 
                           <font class="fon11">
                              ( <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle"> 표시는 필수 입력사항입니다.)
                           </font>
                        </td>
                     </tr>
                     <tr height="2">
                        <td class="ln_bl"></td>
                        <td class="f50 ln_bl" colspan="3"></td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">대표자명(CEO)
                        </td>
                        <td class="ln_b pL7" colspan="3">
                           <input type="text" style="width:20%" class=text name="biz_recharger" hname="대표자명" required value="${vo.biz_recharger}">
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">회사명
                        </td>
                        <td class="ln_b pL7" colspan="3">
                           <input type="text" style="width:20%" class=text name="biz_name" value="${vo.biz_name}" hname="회사명" required>
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">사업자번호
                        </td>
                        <td class="ln_b pL7">
                           <input type="hidden" style="width:35" class=text name="biz_no1" value="408" maxlength="3">
                           <input type="hidden" style="width:25" class=text name="biz_no2" value="14" maxlength="2">
                           <input type="hidden" style="width:50" class=text name="biz_no3" value="86591" maxlength="5">${vo.biz_no}
                        </td>
                        <td class="bg_bl ln_b b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">업종
                        </td>
                        <td class="ln_b pL7 gr">
                           <select class="selBox" name="biz_category" hname="업종" required>
                              <option value=''> = 선택해주세요 =</option>
                              <option value='경영.기획.경리.사무' >경영.기획.경리.사무</option>
                              <option value='금융.세무.법무.부동산' >금융.세무.법무.부동산</option>
                              <option value='교육.사회복지.연구' >교육.사회복지.연구</option>
                              <option value='의료.미용.스포츠.결혼' >의료.미용.스포츠.결혼</option>
                              <option value='netfu_93285_62052a' >음식점.식품.숙박.여행</option>
                              <option value='netfu_66641_23368a' >마케팅.영업.판매직.상담</option>
                              <option value='netfu_18697_50103a' >유통.무역.운수.서비스.보안</option>
                              <option value='netfu_32178_69585a' >기술.연구개발.설계.CAD</option>
                              <option value='netfu_82882_93464a' >기계.제조.산업.생활용품</option>
                              <option value='netfu_95722_91628a' >건설.인테리어.노무</option>
                              <option value='netfu_91499_46275a' >컴퓨터.통신.전기.전자</option>
                              <option value='netfu_91807_39996a' selected>IT.인터넷.게임.모바일</option>
                              <option value='netfu_28428_86076a' >디자인.캐릭터.애니메이션</option>
                              <option value='netfu_33504_58091a' >문화.예술.방송.출판</option>
                              <option value='netfu_62280_82932a' >공기업.보훈.특례.유공자</option>
                           </select>
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">상장여부
                        </td>
                        <td class="ln_b pL7">
                           <select class="selBox" name="biz_list">
                              <option value=''> = 선택해주세요 =</option>
                              <option value='netfu_93272_44768' selected>비상장</option>
                              <option value='netfu_90584_92914' >주권(유가증권) 상장</option>
                              <option value='netfu_77922_41446' >코스닥 상장</option>
                              <option value='netfu_25081_13044' >해외상장</option>
                              <option value='netfu_36795_32453' >해외상장법인 자회사</option>
                           </select>
                        </td>
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">기업형태
                        </td>
                        <td class="ln_b pL7">
                           <select class="selBox" name="biz_form">
                              <option value=""> = 선택해주세요 =</option>
                              <option value='netfu_35327_71639' selected>중소기업(300명이하)</option>
                              <option value='netfu_16206_44500' >중견기업(300명이상)</option>
                              <option value='netfu_50679_24887' >대기업</option>
                              <option value='netfu_33402_91408' >대기업 계열사·자회사</option>
                              <option value='netfu_80712_79474' >벤처기업</option>
                              <option value='netfu_51332_72999' >외국계(외국 투자기업)</option>
                              <option value='netfu_98124_19689' >외국계(외국 법인기업)</option>
                              <option value='netfu_38681_98483' >국내 공공기관·공기업</option>
                              <option value='netfu_86919_52911' >국내 비영리단체·협회·교육재단</option>
                              <option value='netfu_35587_23806' >외국 기관·비영리기구·단체</option>
                           </select>
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">주요사업내용
                        </td>
                        <td class="ln_b pL7 gr lsm1" colspan="3">
                           <input type="text" style="width:100%" class=text name="biz_subject" hname="주요사업내용" required value="${vo.biz_subject}">
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">전화번호
                        </td>
                        <td class="ln_b pL7 gr lsm1">
                           <input type="text" style="width:40px" class=text maxlength="4" name="biz_phone1" hname="전화번호" required value="${vo.biz_phone1}"> - 
                           <input type="text" style="width:40px" class=text maxlength="4" name="biz_phone2" value="${vo.biz_phone2}"> - 
                           <input type="text" style="width:40px" class=text maxlength="4" name="biz_phone3" value="${vo.biz_phone3}">
                        </td>
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">팩스번호
                        </td>
                        <td class="ln_b pL7 gr lsm1">
                           <input type="text" style="width:40px" class=text maxlength="4" name="biz_fax1" value="${vo.biz_fax1}"> - 
                           <input type="text" style="width:40px" class=text maxlength="4" name="biz_fax2" value="${vo.biz_fax2}"> - 
                           <input type="text" style="width:40px" class=text maxlength="4" name="biz_fax3" value="${vo.biz_fax3}">
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이메일
                        </td>
                        <td class="ln_b pL7" colspan="3">
                           <input type="text" class=text style="width:25%"  name="biz_email" hname="이메일" required value="${vo.biz_email1}"> @ 
                           <input type="text" class=text style="width:17%" name="biz_email_tail" value="${vo.biz_email2}">
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">홈페이지
                        </td>
                        <td class="ln_b pL7" colspan="3">http://
                           <input type="text" style="width:39%" class=text   name="biz_home" value="${vo.biz_home}">
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">회사주소
                        </td>
                        <td class="ln_b pL7 gr" style="padding:5 7" colspan="3">
                           <input type="text" name="biz_post" id="biz_post" class="text" readonly style="width:50px" hname="주소" maxlength="5" value="${vo.biz_post}">                      
                           <span>
                              <img src="${allimage}btn/post.gif" onclick="biz_searchPostcode();" style="cursor:pointer; vertical-align:bottom;">
                           </span>
                           <div class="mt3">
                              <input type="text" name="biz_address1" id="biz_address1" style="width:49%" hname="주소" class="text" value="${vo.biz_address1}"> 
                              <input type="text" name="biz_address2" id="biz_address2" style="width:49%" hname="주소" class="text" value="${vo.biz_address2}">
                           </div>
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">설립년도
                        </td>
                        <td class="ln_b pL7">
                           <select name="biz_fonundation" class="selBox">
                              <option value="">----</option>
                              <option value="2018"  >2018</option>
                              <option value="2017"  >2017</option>
                              <option value="2016"  >2016</option>
                              <option value="2015"  >2015</option>
                              <option value="2014"  >2014</option>
                              <option value="2013"  >2013</option>
                              <option value="2012"  >2012</option>
                              <option value="2011"  >2011</option>
                              <option value="2010"  >2010</option>
                              <option value="2009"  >2009</option>
                              <option value="2008"  >2008</option>
                              <option value="2007"  >2007</option>
                              <option value="2006"  selected>2006</option>
                              <option value="2005"  >2005</option>
                              <option value="2004"  >2004</option>
                              <option value="2003"  >2003</option>
                              <option value="2002"  >2002</option>
                              <option value="2001"  >2001</option>
                              <option value="2000"  >2000</option>
                              <option value="1999"  >1999</option>
                              <option value="1998"  >1998</option>
                              <option value="1997"  >1997</option>
                              <option value="1996"  >1996</option>
                              <option value="1995"  >1995</option>
                              <option value="1994"  >1994</option>
                              <option value="1993"  >1993</option>
                              <option value="1992"  >1992</option>
                              <option value="1991"  >1991</option>
                              <option value="1990"  >1990</option>
                              <option value="1989"  >1989</option>
                              <option value="1988"  >1988</option>
                              <option value="1987"  >1987</option>
                              <option value="1986"  >1986</option>
                              <option value="1985"  >1985</option>
                              <option value="1984"  >1984</option>
                              <option value="1983"  >1983</option>
                              <option value="1982"  >1982</option>
                              <option value="1981"  >1981</option>
                              <option value="1980"  >1980</option>
                              <option value="1979"  >1979</option>
                              <option value="1978"  >1978</option>
                              <option value="1977"  >1977</option>
                              <option value="1976"  >1976</option>
                              <option value="1975"  >1975</option>
                              <option value="1974"  >1974</option>
                              <option value="1973"  >1973</option>
                              <option value="1972"  >1972</option>
                              <option value="1971"  >1971</option>
                              <option value="1970"  >1970</option>
                              <option value="1969"  >1969</option>
                              <option value="1968"  >1968</option>
                              <option value="1967"  >1967</option>
                              <option value="1966"  >1966</option>
                              <option value="1965"  >1965</option>
                              <option value="1964"  >1964</option>
                              <option value="1963"  >1963</option>
                              <option value="1962"  >1962</option>
                              <option value="1961"  >1961</option>
                              <option value="1960"  >1960</option>
                              <option value="1959"  >1959</option>
                              <option value="1958"  >1958</option>
                              <option value="1957"  >1957</option>
                              <option value="1956"  >1956</option>
                              <option value="1955"  >1955</option>
                              <option value="1954"  >1954</option>
                              <option value="1953"  >1953</option>
                              <option value="1952"  >1952</option>
                              <option value="1951"  >1951</option>
                              <option value="1950"  >1950</option>
                              <option value="1949"  >1949</option>
                              <option value="1948"  >1948</option>
                              <option value="1947"  >1947</option>
                              <option value="1946"  >1946</option>
                              <option value="1945"  >1945</option>
                              <option value="1944"  >1944</option>
                              <option value="1943"  >1943</option>
                              <option value="1942"  >1942</option>
                              <option value="1941"  >1941</option>
                              <option value="1940"  >1940</option>
                              <option value="1939"  >1939</option>
                              <option value="1938"  >1938</option>
                              <option value="1937"  >1937</option>
                              <option value="1936"  >1936</option>
                              <option value="1935"  >1935</option>
                              <option value="1934"  >1934</option>
                              <option value="1933"  >1933</option>
                              <option value="1932"  >1932</option>
                              <option value="1931"  >1931</option>
                              <option value="1930"  >1930</option>
                              <option value="1929"  >1929</option>
                              <option value="1928"  >1928</option>
                              <option value="1927"  >1927</option>
                              <option value="1926"  >1926</option>
                              <option value="1925"  >1925</option>
                              <option value="1924"  >1924</option>
                              <option value="1923"  >1923</option>
                              <option value="1922"  >1922</option>
                              <option value="1921"  >1921</option>
                              <option value="1920"  >1920</option>
                              <option value="1919"  >1919</option>
                              <option value="1918"  >1918</option>
                              <option value="1917"  >1917</option>
                              <option value="1916"  >1916</option>
                              <option value="1915"  >1915</option>
                              <option value="1914"  >1914</option>
                              <option value="1913"  >1913</option>
                              <option value="1912"  >1912</option>
                              <option value="1911"  >1911</option>
                              <option value="1910"  >1910</option>
                              <option value="1909"  >1909</option>
                              <option value="1908"  >1908</option>
                              <option value="1907"  >1907</option>
                              <option value="1906"  >1906</option>
                              <option value="1905"  >1905</option>
                              <option value="1904"  >1904</option>
                              <option value="1903"  >1903</option>
                              <option value="1902"  >1902</option>
                              <option value="1901"  >1901</option>
                              <option value="1900"  >1900</option>
                              <option value="1899"  >1899</option>
                              <option value="1898"  >1898</option>
                              <option value="1897"  >1897</option>
                              <option value="1896"  >1896</option>
                              <option value="1895"  >1895</option>
                              <option value="1894"  >1894</option>
                              <option value="1893"  >1893</option>
                              <option value="1892"  >1892</option>
                              <option value="1891"  >1891</option>
                              <option value="1890"  >1890</option>
                              <option value="1889"  >1889</option>
                              <option value="1888"  >1888</option>
                              <option value="1887"  >1887</option>
                              <option value="1886"  >1886</option>
                              <option value="1885"  >1885</option>                                
                              <option value="1884"  >1884</option>
                              <option value="1883"  >1883</option>
                              <option value="1882"  >1882</option>
                              <option value="1881"  >1881</option>
                              <option value="1880"  >1880</option>
                           </select> 년 설립
                        </td>
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">사원수
                        </td>
                        <td class="ln_b pL7">
                           <input type="text" class=text style="width:30%"  name="biz_men" value="${vo.biz_men}"> 명
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">자본금
                        </td>
                        <td class="ln_b pL7">
                           <input type="text" class=text style="width:45%" name="biz_capital" value="${vo.biz_capital}"> 원
                        </td>
                        <td class="bg_bl ln_b pL7 b fon11">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">매출액
                        </td>
                        <td class="ln_b pL7">
                           <input type="text" class=text style="width:45%" name="biz_selling" value="${vo.biz_selling}"> 원
                        </td>
                     </tr>
                     <tr>
                        <td class="bg_bl ln_b pL7 b fon11 pt5">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">회사로고
                        </td>
                        <td class="ln_b pL7 pt3">
                           <div id="bg_blogo" align="center">
                              <c:if test="${vo.biz_logo == null}">
                                  <img id="images" src="${allimage}common/no_img.gif" class="mt3">
                               </c:if>
                               <c:if test="${vo.biz_logo != null}">
                                  <img id="images" src="${peg}${vo.biz_logo}" class="mt3">
                               </c:if>
                           </div>
                        </td>
                        <td class="ln_b pL7 pt5" colspan="2">
                        <!-- 수정 필요 !!-->
                           <iframe src="../content1/photo.jsp?userid=${vo.userid}&old_photo=${vo.biz_logo}&p_uid=&mode=logo2" name="input_photo" width="350" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" noresize style="margin:10 0 0;padding:0;height:60;"></iframe>      
                           <input type="hidden" id="old_photo" name="old_photo" value="${vo.biz_logo}">&nbsp;
                        </td>
                     </tr>
                     <tr height="30">
                        <td class="bg_bl ln_b pL7 b fon11 pt5" rowspan="2">
                           <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">회사사진
                        </td>
                        <td colspan="3">
                           <div id=divtype style="width:25%" align="center">
                              <div class=ln_box style='width:140;height:93;padding:3'>            
                                 <c:if test="${vo.photo1 != null}">
                                     <img id="images1" src="${peg}${vo.photo1}" style="width:100%;">
                                  </c:if>
                                  <c:if test="${vo.photo1 == null}">   
                                     <img id="images1" src="${allimage}common/no_img.gif">
                                  </c:if>
                              </div>
                              <div class=mt7>
                                 <img src="${allimage}btn/btn19_06.gif" onClick="chk(1);" style="cursor:pointer"  align="absmiddle">
                              </div>
                           </div>
                           <div id=divtype style="width:25%" align="center">
                              <div class=ln_box style='width:140;height:93;padding:3'>
                                 <c:if test="${vo.photo2 != null}">
                                     <img id="images2" src="${peg}${vo.photo2}" style="width:100%;">
                                  </c:if>
                                  <c:if test="${vo.photo2 == null}">   
                                     <img id="images2" src="${allimage}common/no_img.gif">
                                  </c:if>
                              </div>
                              <div class=mt7>
                                 <img src="${allimage}btn/btn19_06.gif" onClick="chk(2);" style="cursor:pointer"  align="absmiddle">
                              </div>
                           </div>
                           <div id=divtype style="width:25%" align="center">
                              <div class=ln_box style='width:140;height:93;padding:3'>
                                 <c:if test="${vo.photo3 != null}">
                                     <img id="images3" src="${peg}${vo.photo3}" style="width:100%;">
                                  </c:if>
                                  <c:if test="${vo.photo3 == null}">   
                                     <img id="images3" src="${allimage}common/no_img.gif">
                                  </c:if>
                              </div>
                              <div class=mt7>
                                 <img src="${allimage}btn/btn19_06.gif" onClick="chk(3);" style="cursor:pointer"  align="absmiddle">
                              </div>
                           </div>
                           <div id=divtype style="width:25%" align="center">
                              <div class=ln_box style='width:140;height:93;padding:3'>
                                 <c:if test="${vo.photo4 != null}">
                                     <img id="images4" src="${peg}${vo.photo4}" style="width:100%;">
                                  </c:if>
                                  <c:if test="${vo.photo4 == null}">   
                                     <img id="images4" src="${allimage}common/no_img.gif">
                                  </c:if>
                              </div>
                              <div class=mt7>
                                 <img src="${allimage}btn/btn19_06.gif" onClick="chk(4);" style="cursor:pointer"  align="absmiddle">
                              </div>
                           </div>
                        </td>
                        </tr>
                        <tr>
                           <td class="pt7 ln_b pL7" colspan="3">
                              <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">회사사진1 
                              <input type="file" option="image" hname="첨부파일" size=50 name="upfiles1" class="text"><br>
                              <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">회사사진2 <input type="file" option="image" hname="첨부파일" size=50 name="upfiles2" class="text"><br>
                              <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">회사사진3 <input type="file"   option="image" hname="첨부파일" size=50 name="upfiles3" class="text"><br>
                              <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">회사사진4 <input type="file"   option="image" hname="첨부파일" size=50 name="upfiles4" class="text">            
                              <input type="hidden" id="old_photo1" name="old_photo1" value="${vo.photo1}">
                              <input type="hidden" id="old_photo2" name="old_photo2" value="${vo.photo2}">
                              <input type="hidden" id="old_photo3" name="old_photo3" value="${vo.photo3}">
                              <input type="hidden" id="old_photo4" name="old_photo4" value="${vo.photo4}">
                           </td>
                        </tr>
                        <tr height="30">
                           <td class="bg_bl ln_b pL7 b fon11 pt3">
                              <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">기업개요 / 비전
                           </td>
                           <td class="ln_b pL7 gr" colspan="3" style="padding:5 7">
                              <textarea class="brdtxt" style="width:100%; height:120" type=editor  name="biz_vision" id="biz_vision">${vo.biz_vision}</textarea>
                           </td>
                        </tr>
                        <tr>
                           <td class="bg_bl ln_b pL7 b fon11 pt3">
                              <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">연혁 / 실적
                           </td>
                           <td class="ln_b pL7 gr" colspan="3" style="padding:5 7">
                              <textarea class="brdtxt" style="width:100%; height:120" type=editor name="biz_history" id="biz_history">${vo.biz_history}</textarea>
                           </td>
                        </tr>
                     </table>
                  </div>
               </td>
            </tr>
            <tr>
               <td class="pt15 pb20" align="center">
                  <a href="javascript:go_regist_a();">
                     <input type="image" src="${allimage}btn/ok.gif" class="vm png grf_bl" style="cursor:pointer; width:66px; height:35px;">
                  </a>&nbsp; 
                  <a href="javascript:history.go(-1);">
                     <img src="${allimage}btn/cancel.gif" class="vm">
                  </a>
               </td>
            </tr>
         </form>
      </table>   
      <script>
      var ed = new easyEditor("biz_vision");
      var ed1 = new easyEditor("biz_history");
      ed.cfg.imgpath = "/easy_editor/img/flat";
      ed1.cfg.imgpath = "/easy_editor/img/flat";
      ed.init();
      ed1.init();
      </script>
   </td>  
    <!-- 기업정보 수정 끝 -->
   </tr>
</table>