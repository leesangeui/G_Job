<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%> 
<script src="${js}join.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<table style="width:740px; border:none;" cellspacing="0" cellpadding="0">
	<tr><td align="right" valign="bottom">
		<!-- 이동경로 표시 -->
	</td></tr>
	<tr><td style="height:30px;" class="ln_b" colspan="2">
		<div>
			<img src="${allimage}bl/bul_05.gif" align="top">
			<img src="${allimage}tlt/mem_02.gif">
		</div>
	</td></tr>
	<tr>
		<td class="pt10" style="vertical-align: bottom;">
			<img src="${allimage}bl/bul_15.gif" style="padding-bottom:5px;" hspace="3">
			<img src="${allimage}tlt/tlt_mn10.gif" >
		</td>
		<td class="pt15" align="right">
			<ul style="list-style:none; display:inline-flex;" >
				<li><img src="${allimage}login/step_01.gif"></li>
				<li><img src="${allimage}bk/bul_08.gif" hspace="7" style="padding-top:8px;" ></li>
				<li><img src="${allimage}login/step_r02.gif"></li>
				<li><img src="${allimage}bk/bul_08.gif" hspace="7" style="padding-top:8px;" ></li>
				<li><img src="${allimage}login/step_03.gif"></li>
			</ul>
		</td>		
	</tr>
	<form name="regist_form" id="regist_form" method="post" action="../Cust/regist" enctype="multipart/form-data" onsubmit="return go_regist(${ck});">
	<tr><td class="pt7" colspan="2">
		<table style="width:100%; border:none;" cellspacing="0" cellpadding="0">
			<tr>
				<td class="box01_01"></td>
				<td class="box01_02"></td>
				<td class="box01_03"></td>
			</tr>
			<tr>
				<td class="box01_04"></td>
				<td class="box01" valign="top">
		          	<c:if test="${m_type <= 2}">
		          	<!-- 개인회원 , 기업회원 일때 생성  -->
					<div class="mt15 pL7">
						<img src="${allimage}bl/bul_14.gif" hspace="4" align="absmiddle">
						<b>기본정보</b> 
						<font class="fon11">
							( <img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle"> 표시는 필수 입력사항입니다.)
						</font>
					</div>
					<table style="margin:10px; width:97%;" cellspacing="5" cellpadding="0" align="center" class="ln_box wbg" >
						<colgroup><col width="21%"><col width="79%"></colgroup>
						<input type="hidden" name="mode" value="insert">
						<!-- 기업회원인지 개인회원인지 1 or 2 -->
						<input type="hidden" name="m_type" value="${m_type}">	
						<!-- <input type="hidden" name="ssn_hidden" id="ssn_hidden"> -->
						<!-- 아이디 중복체크 -->
						<input type="hidden" name="check_login" id="check_login" hname="아이디 중복체크" value="0">
						
						<tr height="27">
							<td class="lnb2 b fon11">
								<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이름
							</td>
							<td class="lnb2 pL5">
								<input type="text" name="name" hname="이름" class="text">
							</td>
						</tr>
						<tr height="27">
							<td class="lnb2 b fon11">
								<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">아이디
							</td>
							<td class="lnb2 pL5">
								<div>
								<input type="text" name="uid" id="uid" hname="아이디" style=" width:50%;" class="text"> 
								<img src="${allimage}btn/dcheck.gif" onclick="check_login__(${m_type},1);" style="cursor:pointer; vertical-align:bottom;">
								</div>
								<%-- 
								<a href="javascript:" onClick="check_login__();"><span>
									<img src="${allimage}btn/dcheck.gif" align="absmiddle">
								</span></a> 
								--%>
								<div class="mt5 gr">
									<font class="fon11 lsm1">영문과 숫자를 조합하여 4 ~ 12자 이내로 입력하세요.</font>
								</div>
							</td>
						</tr>
						<tr height="27">
								<td class="lnb2 b fon11">
									<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호
								</td>
								<td class="lnb2 pL5">
									<input  type="password" name="passwd" id="passwd" hname="비밀번호" style=" width:50%;" class="text">
									<div class="mt5 gr">
										<font class="fon11 lsm1">비밀번호는 6~16자 영문, 숫자, 특수문자를 혼용 사용할 수 있습니다. (영문대소문자 구분)</font>
									</div>
								</td>
						</tr>
						<tr height="27">
							<td class="lnb2 b fon11">
								<img src="${allimage}bl/bul_06.gif" style="width:7px;" align="absmiddle" hspace="5">비밀번호확인
							</td>
							<td class="lnb2 pL5 gr lsm1">
								<input type="password" name="passwdre" hname="비밀번호 확인" style="width:50%;" class="text"> 
								<font class="fon11 lsm1">한번 더 입력해주세요.</font>
							</td>
						</tr>
						<tr height="27">
							<td class="lnb2 b fon11">
								<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호 찾기 질문
							</td>
							<td class="lnb2 pL5 gr lsm1">
								<select name="password_que" hname="비밀번호 찾기 질문" class="selBox">
									<option value=""> 질문을 선택해주세요 </option>
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
								</select>
							</td>
						</tr>
							<tr height="27">
								<td class="lnb2 b fon11">
									<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">비밀번호 찾기 답변
								</td>
								<td class="lnb2 pL5 gr lsm1">
									<input type="text" style="width:100%" class="text"  name="password_chk" hname="비밀번호 찾기 답변">
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11">
									<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">생년월일
								</td>
								<td class="lnb2 pL5">
									<input type="text" name="birth_year" class="text" id="birth_year" hname="생년월일" style="width:40px" maxlength="4" option="number"> 년&nbsp;
									<input type="text" name="birth_month" id="birth_month" class="text" hname="생년월일" style="width:25px" maxlength="2" option="number"> 월&nbsp;
									<input type="text" name="birth_day" style="width:25px" hname="생년월일" class="text" maxlength="2" option="number"> 일
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11">
									<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">성별
								</td>
								<td class="lnb2 pL5">
									<input type="radio" class="chk" name="sex" id="sex_man" value="man" align="absmiddle">남 &nbsp;
									<input type="radio" class="chk" name="sex" value="woman" id="sex_woman" align="absmiddle">여
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11">
									<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">이메일
								</td>
								<td class="lnb2 pL5">
									<input type="text" name="email" hname="이메일" option="email" span=2 glue="@" style="ime-mode:disabled;width:22%;" class="text">  @ 
									<input type="text" name="email_tail" id="email_tail" class="text" style="width:17%; ime-mode:disabled;">										
									<select name = "email_select" onChange="make_mail(this.options[selectedIndex].text);" class="selBox">
										<option value="">직접입력</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="daum.net" >daum.net</option>
										<option value="naver.com" >naver.com</option>
										<option value="nate.com" >nate.com</option>
										<option value="empal.com" >empal.com</option>
										<option value="lycos.co.kr" >lycos.co.kr</option>
										<option value="paran.com" >paran.com</option>
										<option value="korea.com" >korea.com</option>
										<option value="chollian.net" >chollian.net</option>
										<option value="dreamwiz.com" >dreamwiz.com</option>
										<option value="hanmir.com" >hanmir.com</option>
										<option value="hanafos.com" >hanafos.com</option>
									</select>
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">이메일 수신여부</td>
								<td class="lnb2 pL5">
									<input type="radio" class=chk  name="use_mail" value="yes" align="absmiddle" checked>동의함 &nbsp; 
									<input type="radio"  name="use_mail" value="no" align="absmiddle" class=chk>동의안함
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">홈페이지</td>
								<td class="lnb2 pL5" colspan="3">
									<input type="text" style="width:70%" class="text" name="home">
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">휴대폰</td>
								<td class="lnb2 pL5 gr">
									<input type="text" name="hphone1"  hname="휴대폰" style="width:40px" class="text" maxlength="3"> - 
									<input type="text" name="hphone2"  style="width:40px" class="text" maxlength="4"> - 
									<input type="text" name="hphone3" style="width:40px" class="text" maxlength="4" > 
									<font class="fon11 lsm1">사이트에서 제공하는 안내 및 서비스를 SMS로 받으실 수 있습니다.</font>
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">SMS 수신여부</td>
								<td class="lnb2 pL5">
									<input type="radio" name="use_sms" value="yes"  class=chk align="absmiddle" checked>수신함  &nbsp; 
									<input type="radio" name="use_sms" value="no"  class=chk align="absmiddle">수신안함
								</td>
							</tr>
							<tr height="27">
								<td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">연락처</td>
								<td class="lnb2 pL5 gr">
									<input type="text" name="phone1"  style="width:40px" class="text" maxlength="4" hname="연락처" option="tel" span=3 glue="-" > - 
									<input type="text" name="phone2"  style="width:40px" class="text" maxlength="4" > - 
									<input type="text" name="phone3" style="width:40px" class="text" maxlength="4" >
									<font class="num11 lsm1"><b> [</b> ex) 02-123-4567 <b>]</b></font>
								</td>
							</tr>
							<tr>
								<td class="b fon11"><img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">주소</td>
								<td class="pL5 gr">
									<input type="text" name="post" id="post" class="text" readonly style="width:50px" hname="주소" maxlength="5" option="number"> 							
									<!--  - <input type="text" name="post2"  class="text" readonly style="width:40px" hname="주소" maxlength="3" option="number" onKeyUp="netfu_util.onlyDigit(this);">  -->
									<!-- <a href="javascript://" onClick="netfu_util.searchPost();"> -->
									<span>
										<img src="${allimage}btn/post.gif" onclick="searchPostcode();" style="cursor:pointer; vertical-align:bottom;">
									</span>					
									<div class="mt3">
										<input type="text" name="address1" id="address1" style="width:49%" hname="주소" class="text"> 
										<input type="text" name="address2" id="address2" style="width:49%" hname="주소" class="text">
									</div>		        
								</td>
							</tr>
						</table>
					</c:if>
				<!-- 기업회원 일때 생성 -->
				<c:if test="${m_type == 2}">
		             <div style="margin-top:30">
		             <div class="mt15 pL7">
		             	<img src="${allimage}bl/bul_14.gif" hspace="4" align="absmiddle"><b>기업회원정보</b>
		             </div>
		
		             <table style="margin:10; width:97%;" cellspacing="5" cellpadding="0" align="center" class="ln_box wbg" >
		             <colgroup><col width="21%"><col width="29%"><col width="20%"><col width="30%"></colgroup>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">대표자명(CEO)
		                 </td>
		                 <td class="lnb2 pL5">
		                 	<input type="text"  name="biz_recharger" style="width:70%" hname="대표자성명" required class="text">
		                 </td>
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">회사명
		                 </td>
		                 <td class="lnb2 pL5">
		                 	<input type="text"  name="biz_name" style="width:100%" hname="회사명" required class="text" >
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">사업자번호
		                 </td>
		                 <td class="lnb2 pL5 gr">
		                 	<input type="text"  name="biz_no1" style="width:35px;" option="bizno" span=3 glue="-" maxlength="3" class="text"> - 
		                 	<input type="text" name="biz_no2" maxlength=2 style="width:30px;" class="text"> - 
		                 	<input type="text"  name="biz_no3" style="width:45px;" class="text">
		                 </td>
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">업종
		                 </td>
		                 <td class="lnb2 pL5 gr lsm1" colspan="3">
		                   <select name="biz_category" class="selBox"  hname="업종" required>
		                     	<option value=""> 선택해주세요 </option>
		                     	<option value="경영.기획.경리.사무" >경영.기획.경리.사무</option>
								<option value="금융.세무.법무.부동산" >금융.세무.법무.부동산</option>
								<option value="교육.사회복지.연구" >교육.사회복지.연구</option>
								<option value="의료.미용.스포츠.결혼" >의료.미용.스포츠.결혼</option>
								<option value="음식점.식품.숙박.여행" >음식점.식품.숙박.여행</option>
								<option value="마케팅.영업.판매직.상담" >마케팅.영업.판매직.상담</option>
								<option value="유통.무역.운수.서비스.보안" >유통.무역.운수.서비스.보안</option>
								<option value="기술.연구개발.설계.CAD" >기술.연구개발.설계.CAD</option>
								<option value="기계.제조.산업.생활용품" >기계.제조.산업.생활용품</option>
								<option value="건설.인테리어.노무" >건설.인테리어.노무</option>
								<option value="컴퓨터.통신.전기.전자" >컴퓨터.통신.전기.전자</option>
								<option value="IT.인터넷.게임.모바일" >IT.인터넷.게임.모바일</option>
								<option value="디자인.캐릭터.애니메이션" >디자인.캐릭터.애니메이션</option>
								<option value="문화.예술.방송.출판" >문화.예술.방송.출판</option>
								<option value="공기업.보훈.특례.유공자" >공기업.보훈.특례.유공자</option>
		                   </select>
		                   </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">상장여부
		                 </td>
		                 <td class="lnb2 pL5">
		                   <select name="biz_list" class="selBox">
		                    	<option value="">선택해주세요</option>
		                    	<option value="비상장" >비상장</option>
								<option value="주권(유가증권) 상장" >주권(유가증권) 상장</option>
								<option value="코스닥 상장" >코스닥 상장</option>
								<option value="해외상장" >해외상장</option>
								<option value="해외상장법인 자회사" >해외상장법인 자회사</option>
		                   </select>
		                 </td>
		                 <td class="lnb2 b fon11"><img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">기업형태</td>
		                 <td class="lnb2 pL5">
		                   <select name="biz_form" class=selBox>
		                     	<option value=""> 선택해주세요</option>
		                     	<option value="중소기업(300명이하)" >중소기업(300명이하)</option>
								<option value="중견기업(300명이상)" >중견기업(300명이상)</option>
								<option value="대기업" >대기업</option>
								<option value="대기업 계열사·자회사" >대기업 계열사·자회사</option>
								<option value="벤처기업" >벤처기업</option>
								<option value="외국계(외국 투자기업)" >외국계(외국 투자기업)</option>
								<option value="외국계(외국 법인기업)" >외국계(외국 법인기업)</option>
								<option value="국내 공공기관·공기업" >국내 공공기관·공기업</option>
								<option value="국내 비영리단체·협회·교육재단" >국내 비영리단체·협회·교육재단</option>
								<option value="외국 기관·비영리기구·단체" >외국 기관·비영리기구·단체</option>
		                   </select>
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">주요사업내용
		                 </td>
		                 <td class="lnb2 pL5 gr lsm1" colspan="3">
		                 	<input type="text" name="biz_subject" hname="주요사업내용" required style="width:100%" class="text">
		                 	<div class="mt5 fon11 gr">(예: 네트워크 트래픽 관리제품 개발 및 판매)</div>
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">전화번호
		                 </td>
		                 <td class="lnb2 pL5 gr lsm1">
		                 	<input type="text" style="width:40px" class="text" maxlength="4" name="biz_phone1"  hname="전화번호" required> - 
		                 	<input type="text" style="width:40px" class="text" maxlength="4" name="biz_phone2"> - 
		                 	<input type="text" style="width:40px" class="text" maxlength="4" name="biz_phone3">
		                 </td>									
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">팩스번호
		                 </td>
		                 <td class="lnb2 pL5 gr lsm1">
		                 	<input type="text" style="width:40px" class="text" maxlength="4" hname="팩스번호" required name="biz_fax1"> - 
		                 	<input type="text" style="width:40px" class="text" maxlength="4" name="biz_fax2"> - 
		                 	<input type="text" style="width:40px" class="text" maxlength="4" name="biz_fax3">	
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">이메일
		                 </td>
		                 <td class="lnb2 pL5" colspan="3">
		                 	<input type="text" class="text" style="width:25%" name="biz_email1"> @ 
		                 	<input type="text" class="text" style="width:17%" name="biz_email2"> 
		                 	<font class="fon11 lsm1 gr">회사대표 이메일 주소를 적어주세요.</font>
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">홈페이지
		                 </td>
		                 <td class="lnb2 pL5" colspan="3">
		                 	<input type="text" style="width:70%" class="text" name="biz_home">
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_06.gif" width="7" align="absmiddle" hspace="5">회사주소
		                 </td>
		                 <td class="lnb2 pL5 gr" colspan="3">	                 	
		                 	<input type="text" name="biz_post" id="biz_post" class="text" readonly style="width:50px" hname="주소" maxlength="5" option="number"> 							
							<!--  - <input type="text" name="post2"  class="text" readonly style="width:40px" hname="주소" maxlength="3" option="number" onKeyUp="netfu_util.onlyDigit(this);">  -->
							<!-- <a href="javascript://" onClick="netfu_util.searchPost();"> -->
							<span>
								<img src="${allimage}btn/post.gif" onclick="biz_searchPostcode();" style="cursor:pointer; vertical-align:bottom;">
							</span>
							<div class="mt3">
								<input type="text" name="biz_address1" id="biz_address1" style="width:49%" hname="주소" class="text"> 
								<input type="text" name="biz_address2" id="biz_address2" style="width:49%" hname="주소" class="text">
							</div>		     
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">설립년도
		                 </td>
		                 <td class="lnb2 pL5">
		                   <select name="biz_fonundation" hname="설립년도" class="selBox">
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
	                             <option value="2006"  >2006</option>
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
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">사원수
		                 </td>
		                 <td class="lnb2 pL5">
		                 	<input type="text" class="text" style="width:30%" name="biz_men"> 명 
		                 	<font class="num11 lsm1 gr"><b>[ </b>ex) 200 <b>]</b></font>
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">자본금
		                 </td>
		                 <td class="lnb2 pL5">
		                 	<input type="text" class="text" style="width:45%" name="biz_capital"> 원 
		                 	<font class="fon11 gr lsm1"><b>[ </b>ex) 3억 5천만 <b>]</b></font>
		                 </td>
		                 <td class="lnb2 b fon11">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">매출액
		                 </td>
		                 <td class="lnb2 pL5">
		                 	<input type="text" class="text" style="width:45%" name="biz_selling"> 원 
		                 	<font class="fon11 gr lsm1"><b>[ </b>ex) 3억 5천만 <b>]</b></font>
		                 </td>
		               </tr>
		               <tr height="27">
		                 <td class="lnb2 b fon11 pt3" valign="top">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">기업개요 / 비전
		                 </td>
		                 <td class="lnb2 pL5 gr" colspan="3">
		                   <textarea class="brdtxt" style="width:100%; height:150px;" type="editor"  name="biz_vision"></textarea>
		                   <div class="mt5">
		                   <font class="fon11 lsm1 gr h16"><b>[</b> 입력예 <b>]</b><br>
					                     넷퓨는 e-Recruting서비스를 제공하는 인터넷 취업포털 넷퓨와 경력자 중심의 헤드헌팅 Executive Marketplace 에이치알 파트너스,
					                     아르바이트 알바로와 함께 지식컨텐츠 Marketplace영역인 비즈니스맨의 지식네트워크 비즈몬과 대학생을 위한 리포트 공유 네트워크 리포트베이를 운영하고 있습니다.<br>
					                     또한, 리크루팅 전문 버티컬 영역인 개발자 전문 구인구직 데브잡과 게임전문 구인구직 게임잡, 채용대행솔루션 ASP공급을 위한 온라인 채용대행 솔루션 ORAS(Online Recruiting-Application Service), 교육기관과 개인의 교육과정 중계를 위한 온오프 교육중계서비스, 대학전산망 구축을 주력사업으로 하고 있습니다.
					       </font>
		                   </div>
		                 </td>
		               </tr>
		               <tr>
		                 <td class="b fon11 pt3" valign="top">
		                 	<img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="7">연혁 / 실적
		                 </td>
		                 <td class="pL5 gr" colspan="3">
		                   <textarea class="brdtxt" style="width:100%; height:150" type="editor"  name="biz_history"></textarea>
		                   <div class="mt5">
		                   <font class="fon11 lsm1 gr h16"><b>[</b> 입력예 <b>]</b><br>
		                     <b class="num">2008.12</b>  웹어워드위원회 주최,“2008 웹어워드코리아 대상”2년 연속 수상 <br>
		                     <b class="num">2008.11</b>  방송통신위원회 주최,“대학민국 인터넷대상 국무총리상 수상”<br>
		                     <b class="num">2008.10</b>  한국능률협회컨설팅 주관,“2008 한국의 경영대상 마케팅 대상”6년 연속 수상<br>
		                     <img src="${allimage}common/b.gif" hspace="24">한국소비자포럼 주최,“2008 올해의 브랜드 대상”4년 연속 수상<br>
		                     <img src="${allimage}common/b.gif" hspace="24" vspace="5">브랜드스톡 주최,“2008 올해의 하이스트 브랜드”부문 1위 수상
		                   </font>
		                   </div>
		                 </td>
		               </tr>
		             </table>
		             </div>
				</c:if>
				</td>
         	</tr>
      		<tr>
				<td class=box01_05></td>
			</tr>
			<tr>
				<td class=box01_06></td>
				<td class=box01_07></td>
				<td class=box01_08></td>
			</tr>
		</table>
	</td>
	</tr>
	<tr>
		<td class="pt15 pb20" align="center" colspan="2">
			<input type="image" src="${allimage}btn/ok.gif" style="cursor:pointer; padding:0px; width:66px; height:35px;"> &nbsp;
			<%-- <img src="${allimage}btn/ok.gif"  onClick="go_regist();" style="cursor:pointer"> --%> 
			<a href="../Cust/main"><img src="${allimage}btn/cancel.gif"></a>
		</td>
	</tr>
</form>
</table>