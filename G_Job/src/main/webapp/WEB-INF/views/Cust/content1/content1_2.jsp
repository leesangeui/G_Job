<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<tr><td class=pt10>
  <table width="950" border="0" cellspacing="0" cellpadding="0" align="center"><tr valign="top">
 	
 <!-- 컨텐츠 왼쪽 사이드 메뉴 시작 -->	
<%@include file="./ImypageMenu.jsp" %>
<!-- 컨텐츠 왼쪽 사이드 메뉴 종료 -->
		 <td class=pL10><script>
var sub_category = new SubCategory('job');

var check_form = function(){
	var obj = $("regist_form");
	if(validate(obj)){
		obj.submit();
	}
} 

function toggleViewa(num){
	get1 = document.getElementById('view99');
	if(get1.style.display == "none"){
		get1.style.display = "block";
	}else{
		get1.style.display = "none";
	}
}
function toggleNone(num){
	get1 = document.getElementById('view99');
	get1.style.display = "none";
}
function toggleView(num){
	if(num=="1"){
		e_online_1.style.display = "block";
		document.getElementById('a').className="grf_bl b fon11 wht";
		document.getElementById('b').className="grf_basic b fon11";
		document.getElementById('c').className="grf_basic b fon11";
		document.getElementById('d').href="/my/e_online.html";
		e_online_2.style.display = "none";
		e_online_3.style.display = "none";
	}else if(num=="2"){
		e_online_1.style.display = "none";
		document.getElementById('a').className="grf_basic b fon11";
		document.getElementById('b').className="grf_bl b fon11 wht";
		document.getElementById('c').className="grf_basic b fon11";
		document.getElementById('d').href="/my/e_email.html";
		e_online_2.style.display = "block";
		e_online_3.style.display = "none";
	}else if(num=="3"){
		e_online_1.style.display = "none";
		document.getElementById('a').className="grf_basic b fon11";
		document.getElementById('b').className="grf_basic b fon11";
		document.getElementById('c').className="grf_bl b fon11 wht";
		document.getElementById('d').href="/my/e_proof.html";
		e_online_2.style.display = "none";
		e_online_3.style.display = "block";
	}

}
</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr><td align="right" valign="bottom"><!--네비-->
<div>
		<a href="/" class=navi><img src="${allimage}ic/home.gif" class="f75" style="margin:0 4">Home</a><img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0"><a href="" class=navi><b class='<?=netfu_site_basic_mgr::get_color_top()?>'>마이페이지</b></a></div>
<!--네비--></td></tr>
  <tr><td height='30' class="ln_b"><div><img src="${allimage}bl/bul_05.gif" align="top"> <img src="${allimage}tlt/my_01.gif" align="top"></div></td></tr>
  
  <tr><td class="pt15" align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr><td class=bl07_01></td><td class=bl07_02></td><td class=bl07_03></td></tr><tr><td class=bl07_04></td><td class="grr_bl">
    <table width="100%" border="0" cellspacing="5" cellpadding="0" class="mt3">
      <tr><td><img src="${allimage}ic/ic_m01.gif" align="absmiddle" hspace="4"><b class="fon13 bl">${vo.uname} (<font class="num">${vo.userid }</font>)</b> 님의 마이페이지입니다.</td>
      <td width="20%" class="fon11" align="right" valign="bottom"><b>[</b> 최종접속일 : ${vo.l_date } <b>]</b></td></tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <colgroup><col width="20%"><col width="80%"></colgroup>
      <tr valign="top">      
        <td align="center" valign="top" class="pt10"><div class="ln_box wbg" style="width:126;height:148;padding:3 3;"><img id="images" src="${peg}detail3_netfu_29881_40004.jpg" ></div>
          <div class="mt5 num11"><b>[</b>size : 120 * 142 pixel<b>]</b></div>
          <div class="mt7"><a onClick="toggleViewa(99)" style="cursor:pointer"><img src="${allimage}btn/photo_up.gif"></a></div>
          <div id="view99" style="position:relative;display:none;">
          <div style="position:absolute;left:-76;top:-22;width:300">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <iframe width=0 height=0 name='photo_input' style='display:none;'></iframe>
          <form name="regist_ptoto_form" action="/no_regist/regist_photo.php"  enctype="multipart/form-data" target="photo_input" method="POST" onSubmit="return (validate(this)&&confirm('수정하시겠습니까?'+SPACE))">
            <input type="hidden" id="mode" name="mode" value="regist_photo">
            <input type="hidden" id="value" name="value">
            <input type="hidden" name="uid" value="${vo.userid}">
            <input type="hidden" id="old_photo" name="old_photo" value="netfu_29881_40004.jpg">
          <tr><td class=bl073_01></td><td class=bl073_02></td><td class=bl073_03></td></tr><tr><td class=bl073_04></td><td class="bl073 pt7 pb7" align="center">
        <input type="file" name="photo_files"  hname="사진" required style="width:97%; border:1px solid #fff">
        <div class="mt3 fon11 bl">※ 로고 파일형식은 확장자 <b>*.gif</b>, <b>*.jpg</b>만 가능합니다.</div>
        <div class="mt5" align="center"><input type="image" src="${image}/btn19_08.gif"> <a onClick="toggleNone(99);" style="cursor:pointer"><img src="${image}/btn19_07.gif" class="vm"></a></div>
        </td><td class=bl073_05></td></tr><tr><td class=bl073_06></td><td class=bl073_07></td><td class=bl073_08></td></tr>
        </form>
        </table>
        </div>
        </div>
        </td>
        <td valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr><td class=box06_01></td><td class=box06_02></td><td class=box06_03></td></tr><tr><td class=box06_04></td><td class="box06">
        <table width="100%" border="0" cellspacing="0" cellpadding="5">
        <colgroup><col width="50%"><col width="50%"></colgroup>
          <tr valign="top">
            <td>
              <table width="100%" border="0" cellspacing="5" cellpadding="0">
              <colgroup><col width="27%"><col></colgroup>
                <tr>
                  <td class="bl" colspan="2"><img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle"><b>개인정보</b></td>
                </tr>
                <tr>
                  <td colspan="2" class="ln_bl" height="2"></td>
                </tr>
                <tr>
                  <td height=22><img src="${allimage}bl/bul_16.gif" hspace="3"><b class="fon11">생년월일</b></td>
                  <td style="padding:3 3">${vo.jumin}</td></tr><tr><td colspan="2" class="dot"></td></tr>
                <tr>
                  <td height=22><img src="${allimage}bl/bul_16.gif" hspace="3"><b class="fon11">홈페이지</b></td>
                  <td style="padding:3 3">${vo.home }</td></tr><tr><td colspan="2" class="dot"></td></tr>
                <tr>
                  <td height=22><img src="${allimage}bl/bul_16.gif" hspace="3"><b class="fon11">연락처</b></td>
                  <td style="padding:3 3">${vo.phone }</td></tr><tr><td colspan="2" class="dot"></td></tr>
                <tr>
                  <td height=22><img src="${allimage}bl/bul_16.gif" hspace="3"><b class="fon11">휴대폰번호</b></td>
                  <td style="padding:3 3">${vo.hphone}</td></tr><tr><td colspan="2" class="dot"></td>
                </tr>
                <tr>
                  <td height=22><img src="${allimage}bl/bul_16.gif" hspace="3"><b class="fon11">이메일</b></td>
                  <td style="padding:3 3"><a href="mailto:cuttlefish@lycos.co.kr">${vo.email}</a></td></tr><tr><td colspan="2" class="dot"></td>
                </tr>
                <tr>
                  <td height=22><img src="${allimage}bl/bul_16.gif" hspace="3"><b class="fon11">주소</b></td>
                  <td class="h16" style="padding:3 3">${vo.address1 }<br>${vo.address2 }</td>
                </tr>
                <tr>
                  <td colspan="2" class="dot"></td>
                </tr>
                <tr>
                  <td colspan="2" align="right" class="pt5"><a href="./modify.html"><img src="${allimage}btn/btn19_mod.gif"></a></td>
                </tr>
              </table>
            </td>
            <td>
              <div class="mt3 mb5 bl"><img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle"><b>나의 취업활동내역</b></div>
              <table width="100%" border="0" cellspacing="1" cellpadding="5" class="ln">
                <tr class="lbg" align="center">
                  <td class="fon11">온라인<br>입사지원</td>
                  <td class="fon11">이메일<br>입사지원</td>
                  <td class="fon11">채용정보<br>스크랩</td>
                  <td class="fon11">이력서<br>열람기업</td>
                  <td class="fon11">등록된<br>관심기업</td>
                </tr>
                <tr class="wbg" align="center">
                  <td><a href="/my/e_online.html"><u><b>0</b></u></a></td>
                  <td><a href="/my/e_email.html"><u><b>0</b></u></a></td>
                  <td><a href="/my/e_scrap.html"><u><b>0</b></u></a></td>
                  <td><a href="/my/res_contact.html"><u><b>2</b></u></a></td>
                  <td><a href="/my/favorco.html"><u><b>2</b></u></a></td>
                </tr>
              </table>
              <div class="mt15 mb5 bl" style="position:relative"><img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle"><b>등록한 이력서</b><div style="position:absolute;right:7;top:0"><a href="/my/resume_list.html"><img src="${allimage}ic/txt_more.gif"> <img src="${allimage}bl/bul_16.gif" align="absmiddle"></a></div></div>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td class=bl071_01></td><td class=bl071_02></td><td class=bl071_03></td></tr><tr><td class=bl071_04></td><td>
                <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
                                  <tr>
                    <td style="padding:3 0 5" class="fon11">등록한 이력서는 총 <b class="bl"><u>3</u></b> 건 입니다.</td><td align="right" valign="top"><a href="/my/resume_list.html"><img src="${allimage}btn/btn_mres02.gif" class="mt1"></a></td>
                  </tr>
                                  <tr>
                    <td colspan="2" class="dot"></td>
                  </tr>
                                                      <tr>
                    <td colspan="2" class="ln_b lsm1 h16" style="padding:7 0 3">
                      <a href="/resume/detail.html?no=61"><b>열심히 일하겠습니다.</b></a>&nbsp;<font class="fon11 lgr"><b>[</b>공개<b>]</b></font><br>
                      <font class="fon11 dgr">서울/강남구 | 중졸 | 2년 2개월 | 면접후 결정</font>
                    </td>
                  </tr>
                                    <tr>
                    <td colspan="2" class="ln_b lsm1 h16" style="padding:7 0 3">
                      <a href="/resume/detail.html?no=55"><b>프로그램잘하는 1인자</b></a>&nbsp;<font class="fon11 lgr"><b>[</b>공개<b>]</b></font><br>
                      <font class="fon11 dgr">서울/강남구 | 대졸(2~3년) | 4년 3개월 | 면접후 결정</font>
                    </td>
                  </tr>
                                    <tr>
                    <td colspan="2" class="ln_b lsm1 h16" style="padding:7 0 3">
                      <a href="/resume/detail.html?no=58"><b>php마스터</b></a>&nbsp;<font class="fon11 lgr"><b>[</b>공개<b>]</b></font><br>
                      <font class="fon11 dgr">서울/강남구 | 대졸(4년) | 신입 | 면접후 결정</font>
                    </td>
                  </tr>
                                  </table>
						</td><td class=bl071_05></td></tr><tr><td class=bl071_06></td><td class=bl071_07></td><td class=bl071_08></td></tr></table>
            </td>
          </tr>
        </table>
        </td><td class=box06_05></td></tr></table>
        </td>
      </tr>
    </table>
    </td><td class=bl07_05></td></tr><tr><td class=bl07_06></td><td class=bl07_07></td><td class=bl07_08></td></tr></table>
  </td>
  </tr>
  <tr>
    <td class="pt15">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <colgroup><col width="49%"><col width="2%"><col width="49%"></colgroup>
        <tr valign="top">
          <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="2">
              <tr align="center" height="25">
                <td width="95" style="cursor:hand;" id="a" onClick="toggleView(1);" class="grf_bl b fon11 wht">온라인 입사지원</td>
                <td width="1"></td>
                <td width="95" style="cursor:hand;" id="b"  onClick="toggleView(2);" class="grf_basic b fon11">이메일 입사지원</td>
                <td width="1"></td>
                <td width="95" style="cursor:hand;" id="c" onClick="toggleView(3);" class="grf_basic b fon11">취업활동증명서</td>
                <td align="right" valign="bottom" class="pb5"><a id="d" href="/my/e_online.html"><img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="4"><img src="${allimage}ic/txt_more.gif"></a></td>
              </tr>
            </table>
            <div style="position:relative">
            <div style="position:relative;top:0; height:137;display:'';" id="e_online_1" >
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <colgroup><col width="30%"><col></colgroup>
              <tr>
                <td colspan="2" class="ln_bl" height="2"></td>
              </tr>
              <!-- loop * 10-->
              
              <tr><td colspan="2" align="center" class="ln_b h20" style="padding:10 10">입사지원 현황이 없습니다.</td></tr>
                             <!-- loop -->
            </table>
            </div>
            </div>
            <div style="position:relative">
            <div style="position:relative;top:0;height:137;display:none;" id="e_online_2" >
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <colgroup><col width="30%"><col width="70%"></colgroup>
              <tr>
                <td colspan="2" class="ln_bl" height="2"></td>
              </tr>
              <!-- loop * 10-->
              
              <tr><td colspan="2" align="center" class="ln_b h20" style="padding:10 10">입사지원 현황이 없습니다.</td></tr>
                             <!-- loop -->
            </table>
            </div>
            </div>
            <div style="position:relative">
            <div style="position:relative;top:0; height:137;display:none;" id="e_online_3">
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <colgroup><col width="30%"><col width="70%"></colgroup>
              <tr>
                <td colspan="2" class="ln_bl" height="2"></td>
              </tr>
              <!-- loop * 10-->
              
              <tr><td colspan="2" align="center" class="ln_b h20" style="padding:10 10">취업활동 현황이 없습니다..</td></tr>
                             <!-- loop -->
            </table>
            </div>
            </div>
          </td>
          <td></td>
          <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <colgroup><col width="34%"><col></colgroup>
              <tr>
                <td height="25"><img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle"><b class="bl lsm1">관심기업 채용현황</b></td><td align="right" valign="bottom" class="pb5"><a href="/my/favorco.html"><img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="4"><img src="${allimage}ic/txt_more.gif"></a></td>
              </tr>
              <tr>
                <td colspan="2" class="ln_bl" height="2"></td>
              </tr>
                                                                                <!-- loop * 10-->
                  <tr>
                    <td class="pdLlnb2">넷퓨</td>
                    <td class="pdLlnb2"><a href="/employ/detail.html?no=75" target="new">학원강사를 구합니다.</a></td>
                  </tr>
                  <!-- loop -->
                                <!-- loop * 10-->
                  <tr>
                    <td class="pdLlnb2">넷퓨</td>
                    <td class="pdLlnb2"><a href="/employ/detail.html?no=70" target="new">유명포털싸이트 단순해피콜</a></td>
                  </tr>
                  <!-- loop -->
                                <!-- loop * 10-->
                  <tr>
                    <td class="pdLlnb2">넷퓨</td>
                    <td class="pdLlnb2"><a href="/employ/detail.html?no=24" target="new">웹디자인 / 웹프로그램 모집합니다.</a></td>
                  </tr>
                  <!-- loop -->
                                <!-- loop * 10-->
                  <tr>
                    <td class="pdLlnb2">넷퓨</td>
                    <td class="pdLlnb2"><a href="/employ/detail.html?no=67" target="new">참신한 생각을 가지신 웹기획자 한분 …</a></td>
                  </tr>
                  <!-- loop -->
                                                  <!-- loop * 10-->
                  <tr>
                    <td class="pdLlnb2">조은비젼2</td>
                    <td class="pdLlnb2"><a href="/employ/detail.html?no=25" target="new">사장님 운전기사 채용 합니다</a></td>
                  </tr>
                  <!-- loop -->
                          </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td class="pt15">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td class=bl071_01></td>
          <td class=bl071_02></td>
          <td class=bl071_03></td>
        </tr>
        <tr>
          <td class=bl071_04></td>
          <td class="gr_bl fon11" style="padding:7 5; cursor:hand" onClick="location.href='/my/control.html'">
            <img src="${allimage}bl/bul_06.gif" hspace="3" align="top" style="margin-top:1"><b class="ddgr" style="font-size:12px"><font class="bl">MY</font> 맞춤서비스&nbsp; </b>개인회원이 원하는 맞춤정보로 변경하시려면, <b>맞춤채용정보> My 서비스설정</b>에서 설정하시면 됩니다.
          </td>
          <td class=bl071_05></td>
        </tr>
        <tr>
          <td class=bl071_06></td>
          <td class=bl071_07></td>
          <td class=bl071_08></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td class="pt15">
      <div class="mb3 bl"><img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle"><b>포토 채용정보</b></div>
      <table width="100%" border="0" cellspacing="3" cellpadding="4">
      <colgroup><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="60%"></colgroup>
        <tr>
          <td colspan="5" class="ln_bl" style="padding:0" height="2"></td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_15535_44667.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_54642_80956.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_65809_10384.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_64668_89726.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=75"><b class="bl">넷퓨</b></a></td><td align="right" class="fon11"> 상시채용</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=75" class="ddgr">학원강사를 구합니다.</a>
                  <div class="pt3 fon11 dgr">경력 ㅣ 대학교졸업(4년) ㅣ 나이무관 ㅣ 성별무관 ㅣ 광주광역시</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_78607_22143.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_50918_49434.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_90037_42452.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_59825_89501.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=36"><b class="bl">(주)시사이씨씨어학원</b></a></td><td align="right" class="fon11"> 채용시</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=36" class="ddgr">영어강사 구인</a>
                  <div class="pt3 fon11 dgr">경력5년 ㅣ 대학졸업(2~3년) ㅣ 나이무관 ㅣ 성별무관 ㅣ 인천광역시</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_15535_44667.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_54642_80956.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_65809_10384.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_64668_89726.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=70"><b class="bl">넷퓨</b></a></td><td align="right" class="fon11"> 상시채용</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=70" class="ddgr">유명포털싸이트 단순해피콜</a>
                  <div class="pt3 fon11 dgr">경력5년 ㅣ 고등학교졸업 ㅣ 나이무관 ㅣ 성별무관 ㅣ 서울특별시</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_15535_44667.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_54642_80956.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_65809_10384.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_64668_89726.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=24"><b class="bl">넷퓨</b></a></td><td align="right" class="fon11"> 상시채용</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=24" class="ddgr">웹디자인 / 웹프로그램 모집합니다.</a>
                  <div class="pt3 fon11 dgr">경력1년 ㅣ 대학졸업(2~3년) ㅣ 나이무관 ㅣ 성별무관 ㅣ 경기도</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_86733_17743.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_60524_68108.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_86358_44694.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_34204_94693.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=44"><b class="bl">씨알학원</b></a></td><td align="right" class="fon11"> 채용시</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=44" class="ddgr">단과 보조강사 및 전산직, 사무보조 알바모집</a>
                  <div class="pt3 fon11 dgr">경력무관 ㅣ 대학졸업(2~3년) ㅣ 나이무관 ㅣ 성별무관 ㅣ 강원도</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_42922_53775.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_98225_43133.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_63693_49288.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_27894_82310.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=46"><b class="bl">(주)일동생활</b></a></td><td align="right" class="fon11"> 채용시</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=46" class="ddgr">일동프라센가족을모십니다.</a>
                  <div class="pt3 fon11 dgr">경력무관 ㅣ 고등학교졸업 ㅣ 나이무관 ㅣ 성별무관 ㅣ 울산광역시</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop *5 -->
        <tr align="center" valign="top">
          <td class="ln_b"><img src=${peg}netfu_84575_29860.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_69812_96640.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_50579_96517.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b"><img src=${peg}netfu_91934_88752.jpg width="80"  height="60" class=ln_box></td>
          <td class="ln_b pL5" align="left">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
              <tr>
                <td><img src="${allimage}bl/bul_17.gif" align="top" hspace="4" style="margin-top:4"><a href="/employ/detail.html?no=47"><b class="bl">JST어학원</b></a></td><td align="right" class="fon11"> 채용시</td>
              </tr>
              <tr>
                <td class="dot" colspan="2"></td>
              </tr>
              <tr>
                <td class="pt5 h16 pL5" colspan="2">
                  <a href="/employ/detail.html?no=47" class="ddgr">초.중등 영어강사모집</a>
                  <div class="pt3 fon11 dgr">경력1년 ㅣ 대학졸업(2~3년) ㅣ 나이무관 ㅣ 성별무관 ㅣ 부산광역시</div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
                <!-- loop -->
      </table>
    </td>
  </tr>
</table></td> 
  </tr></table>
  </td></tr>
