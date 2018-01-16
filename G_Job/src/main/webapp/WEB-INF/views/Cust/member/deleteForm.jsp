<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<tr>
<td class=pt10>
<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr valign="top">   
    <!-- 컨텐츠 왼쪽 사이드 메뉴 시작 --> 
    <c:if test="${m_type == 2}"> 
   <%@ include file="../content1/CmypageMenu.jsp" %>
   </c:if>
   <c:if test="${m_type == 1}"> 
   <%@ include file="../content1/ImypageMenu.jsp" %>
   </c:if>  
    <!-- 컨텐츠 왼쪽 사이드 메뉴 끝 -->  
   
    <!-- 메인 --> 
     <td class=pL10>
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
      
      function go_rleft_member(){
         if(!confirm("정말 탈퇴하시겠습니까?"))
            return false;
         if(document.secession_form_.passwd.value!=document.secession_form_.passwdre.value){
            alert("비밀번호가 일치하지 않습니다.");
            return false;
         }
      }
   </script>
   <script src='../easy_editor/easyEditor.js'></script>

   <table width="740" border="0" cellspacing="0" cellpadding="0">
      <form name="secession_form_"   method="post" action = "./out" onsubmit="return go_rleft_member();">
         <input type="hidden" name="mode" value="left_member">
         <input type="hidden" name="userid" value="${vo.userid}">
         <input type="hidden" name="m_type" value="${m_type}">
      <tr>
         <td align="right" valign="bottom">
            <!--네비-->
            <div>
               <a href="/" class=navi><img src="${allimage}ic/home.gif" class="f75" style="margin:0 4">Home</a>
               <img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0">
               <a href="" class=navi>마이페이지</a>
               <img src="${allimage}basic/bul_16.gif" class=vm style="margin:2 4 0">
               <b class="navi bl">진행중인채용정보</b>
            </div>
            <!--네비-->
         </td>
      </tr>
      <tr>
         <td height='30' class="ln_b">
            <div>
               <img src="${allimage}bl/bul_05.gif" align="top"> 
               <img src="${allimage}tlt/my_32.gif" align="top">
               <img src="${allimage}tlt/sub_19.gif" align="top">
            </div>
         </td>
      </tr>
       <tr>
          <td class="pt15">
             <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                   <td class="bl072_01"></td>
                   <td class="bl072_02"></td>
                   <td class="bl072_03"></td>
                </tr>
                <tr>
                   <td class="bl072_04"></td>
                   <td class="h20" style="padding:10 15" align="center">
                      <b class="fon13 bl">그동안 저희 굿잡 이용해주셔서 감사합니다. 고객님께서 회원탈퇴를 하신다니 무척 안타깝습니다!</b><br>
                      <font class="fon11">보다 나은 서비스를 위해 그동안 불편하셨던 점이나 불만사항을 알려주시면 적극 반영하여 향후 개선하도록 하겠습니다.</font>
                   </td>
                   <td class="bl072_05"></td>
                </tr>
                <tr>
                   <td class="bl072_06"></td>
                   <td class="bl072_07"></td>
                   <td class="bl072_08"></td>
                </tr>
             </table>
          </td>
       </tr>
      <tr>
         <td class="pt15">
            <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding:5 4 5 7">
               <colgroup><col width="15%"><col width="85%"></colgroup>
               <tr>
                  <td colspan="2" class="pL3">
                     <img src="${allimage}bl/bul_15.gif" align="absmiddle"> 
                     <b>회원탈퇴 동의정보</b>
                  </td>
               </tr>
               <tr height="2">
                  <td class="ln_bl"></td>
                  <td class="f50 ln_bl"></td>
               </tr>
               <tr height="27">
                  <td class="bg_bl ln_b b fon11">
                     <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="5">이름
                  </td>
                  <td class="ln_b">
                     ${vo.uname}
                     <input type="hidden" name="name" value="${vo.uname}">&nbsp;
                  </td>
               </tr>
               <tr height="27">
                  <td class="bg_bl ln_b b fon11">
                     <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="5">아이디
                  </td>
                  <td class="ln_b num"><b>${vo.userid}</b>&nbsp;</td>
               </tr>
               <tr height="27">
                  <td class="bg_bl ln_b b fon11">
                     <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="5">비밀번호
                  </td>
                  <td class="ln_b">
                     <input type="password" name="passwd"  hname="비밀번호"  style="ime-mode:disabled;width:30%" required size=10 class=text>
                  </td>
               </tr>
               <tr height="27">
                  <td class="bg_bl ln_b b fon11">
                     <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="5">비밀번호확인
                  </td>
                  <td class="ln_b gr lsm1">
                     <input type="password" style="ime-mode:disabled;width:30%" name="passwdre" class=text> 
                     <font class="fon11 lsm1">한번 더 입력해주세요.</font>
                  </td>
               </tr>
            </table>
         </td>
      </tr>
         <tr>
            <td class="pt15">
            <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding:5 4 5 7">
               <colgroup><col width="15%"><col width="85%"></colgroup>
               <tr>
                  <td colspan="2" class="pL3">
                     <img src="${allimage}bl/bul_15.gif" align="absmiddle"> 
                     <b>회원탈퇴 사유</b>
                  </td>
               </tr>
               <tr height="2">
                  <td class="ln_bl"></td>
                  <td class="f50 ln_bl"></td>
               </tr>
               <tr height="27">
                  <td class="bg_bl ln_b b fon11">
                     <img src="${allimage}bl/bul_19.gif" align="absmiddle" hspace="5">남기고 싶은말
                  </td>
                  <td class="ln_b">
                     <input type="text" name="secession" hname="탈퇴사유" required class=text style="width:100%">
                  </td>
               </tr>
            </table>
         </td>
      </tr>
      <tr>
         <td class="pt15 pb20" align="center">
            <input type="image" src="${allimage}btn/ok.gif" style="cursor:pointer; height:34px; width:64px;" >&nbsp;
            <%-- <img src="${allimage}btn/ok.gif" onClick="go_rleft_member();"  style="cursor:pointer">&nbsp;  --%>
            <a href="/"><img src="${allimage}btn/cancel.gif"></a>
         </td>
      </tr>
      </form>
   </table>
     </td>    
    <!-- 메인  끝-->
   </tr>
</table>