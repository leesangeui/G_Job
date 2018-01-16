<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
 <td width="200">
 <table border="0" cellspacing="0" cellpadding="0">
     <tr><td>   
    <!--로그인 후-->
    <!-- 로그인 테이블 호출 -->
    <%@ include file="../login/login.jsp"%>
    <!-- 로그인 테이블 종료 -->
    </td></tr>
     <tr><td class="pt7">
        <img src="${allimage}bl/leftmn_01.gif">
     </td></tr>
    <tr><td background="${allimage}bl/leftmn_06.gif" style="padding:0 6">
    <!-- 왼쪽사이드 메뉴 -->
       <table style="width:100%; border: 0px;"cellspacing="0" cellpadding="0">
          <tr><td style="background:url('${allimage}bl/leftmn_02.gif') no-repeat top; padding:11 5 14 5; height:60;" valign="top">
             <img src="${allimage}bl/tlt_my.gif">
          </td></tr>
          <tr><td style="padding:0 6;" background="${allimage}bl/leftmn_04.gif" valign="top">
              <table style="width:95%; border: 0;" cellspacing="0" cellpadding="5" align="center">                  
                <!-- 마이페이지 -->                    
                  <tr><td class="ln_b">
                     <img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
                     <b class="bk">회원정보관리</b>
                  </td></tr>
                  <tr><td class="fon11 lbg h16">
                     <a href="../job_user/Minfomation?m_type=2">- 기업정보 수정</a><br>
                     <a href="./pay.html">- 결제내역 조회</a><br>
                     <a href="./tax.html">- 세금계산서 발행신청</a>
                  </td></tr>
                  <tr><td class="ln_b">
                     <img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
                     <b class="bk">채용관리</b>
                  </td></tr>
                  <tr><td class="fon11 lbg h16">
                     <a href="./employ.html">- 채용정보등록</a><br>
                     <a href="./employ_list.html">- 진행중인 채용정보</a><br>
                     <a href="./employ_list.html?mode=end">- 마감된 채용정보</a>
                  </td></tr>  
                 <tr><td class="ln_b">
                    <img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
                    <b class="bk">인재정보검색</b>
                 </td></tr>
                 <tr><td class="fon11 lbg h16">
<!-- DB에서 불러오기 필요함!!!!!! -->
                    <div class="wbg fon11 h16 mb3 ln_box" style="padding:5" align="center">
                       <b>= 인재검색 서칭서비스 =</b><br>
                       <font class="num11">
                          <b>[</b> 
                          <c:if test="${vo.resume_search == null}">
                             서비스 신청 안함
                          </c:if>
                          <c:if test="${vo.resume_search != null}">
                             ~${vo.resume_search}
                          </c:if>        
                          <b>]</b>
                       </font>
                        <div style="margin:3 0 5">
                           <c:if test="${vo.resume_search == null}">
                           <!-- 서비스 신청 -->
                              <a href="/pay/index.html?mode=job#msearch7">
                                 <img src="${allimage}btn/btn23_svsup.gif">
                             </a>
                           </c:if>
                           <c:if test="${vo.resume_search != null}">
                           <!-- 서비스 연장 -->
                             <a href="/pay/index.html?mode=job#msearch7">
                                 <img src="${allimage}btn/btn19_renew.gif">
                             </a>
                          </c:if>             
                        </div>
                       <!--입급확인중인 서비스 : <b class="org">10건</b>-->
                    </div> 
<!-- DB에서 불러오기 필요함 끝 !!!!!! -->   
                    <div class="fon11 mt3">
                       <a href="/pay/index.html?mode=job#msearch7">- 인재검색 서칭서비스 신청</a><br>
                        <a href="./r_scrap.html">- 인재정보스크랩</a><br>
                        <a href="./r_request.html">- 입사지원 요청관리</a><br>
                        <a href="./r_interview.html">- 면접제의 요청관리</a><br>
                        <a href="./r_on_request.html">- 입사지원자관리</a>
                     </div>
                   </td></tr>
                   <tr><td class="ln_b">
                      <img src="${allimage}basic/bul_11.gif" align="absmiddle"> 
                      <b class="bk">맞춤인재정보</b>
                   </td></tr>  
                   <tr><td class="fon11 lbg h16">
                      <a href="./r_order.html">- 맞춤인재정보</a><br>
                      <a href="./control.html">- My 서비스설정</a>
                   </td></tr>                    
             </table>
           </td></tr>
           <tr><td>
              <img src="${allimage}bl/leftmn_05.gif">
           </td></tr>
           <!-- 마이페이지 끝 -->                   
           <!-- 고객센터 전화번호/1대1 맞춤 상담 -->          
           <tr><td class="pt7">
              <%@ include file="./callcenterInfo.jsp"%>
           </td></tr>
           <!-- 고객센터 전화번호/1대1 맞춤 상담 끝 -->       
       </table>
    <!-- 왼쪽사이드 메뉴 끝 -->
    </td></tr>
    
    <!-- 메뉴 --> 
    <tr><td valign="bottom">
       <img src="${allimage}bl/leftmn_07.gif" width="200" height="6">
    </td></tr>
 </table>
 </td>