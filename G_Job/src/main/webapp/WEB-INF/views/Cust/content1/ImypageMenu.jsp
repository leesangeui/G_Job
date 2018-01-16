<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%> 
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