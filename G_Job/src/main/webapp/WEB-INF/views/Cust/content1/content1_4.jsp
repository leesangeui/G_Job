<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<tr>
<td class=pt10>
<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
   <tr valign="top">   
   <!-- 컨텐츠 왼쪽 사이드 메뉴 시작 -->   
   <%@include file="./CmypageMenu.jsp" %>
   <!-- 컨텐츠 왼쪽 사이드 메뉴 종료 -->
   <!-- 마이페이지 시작 -->
   <td class=pL10>
      <script>
      var sub_category = new SubCategory('job');
      
      var check_form = function(){
         var obj = $("regist_form");
         if(validate(obj)){
            obj.submit();
         }
      }
      
      function toggleView(num){
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
      function toggleView2(num){
         if(num=="1"){
            e_online_1.style.display = "block";
            document.getElementById('a').className="grf_bl b fon11 wht";
            document.getElementById('b').className="grf_basic b fon11";
            document.getElementById('d').href="/my/employ_list.html";
            e_online_2.style.display = "none";
         }else if(num=="2"){
            e_online_1.style.display = "none";
            document.getElementById('a').className="grf_basic b fon11";
            document.getElementById('b').className="grf_bl b fon11 wht";
            document.getElementById('d').href="/my/employ_list.html?mode=end";
            e_online_2.style.display = "block";
         }
      
      }
      </script>
      <table style="width:100%; border:0px;" cellspacing="0" cellpadding="0">
       <tr><td align="right" valign="bottom">
          <!-- 네비게이션 넣기 -->
       </td></tr>
       <tr><td height='30' class="ln_b"><div>
          <img src="${allimage}bl/bul_05.gif" align="top"> 
          <img src="${allimage}tlt/my_01.gif" align="top">
       </div></td></tr>
       <tr><td class="pt15" align="center">
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <!-- 디자인 변경에 따른 class 이름 변화 -->
            <tr>
               <td class="bl073_01"></td>
               <td class="bl073_02"></td>
               <td class="bl073_03"></td>
            </tr>
            <tr>
               <td class="bl073_04"></td>
               <td class="bl073">
                    <table style="width:100%; border:0px;" cellspacing="5" cellpadding="0" class="mt3">
                       <tr>
                       <td>
                          <img src="${allimage}ic/ic_m01.gif" align="absmiddle" hspace="4">
                          <b class="fon13 bl">
                             ${vo.uname} (<font class="num">${vo.userid}</font>)
                          </b> 님의 마이페이지입니다.
                       </td>
                      <td style="width:205;" class="fon11" align="right" valign="bottom">
                         <b>[</b>  최종접속일 : ${vo.l_date} <b>]</b>
                      </td>
                        </tr>
                     </table>
                     <table style="width:100%; boreder:0px;" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                        <colgroup><col width="20%"><col width="80%"></colgroup>
                         <td align="center" valign="top" class="pt10" style="padding-right:5;">
                            <div id="bg_blogo" align="center">
                               <%-- <img id="images" src="<?= netfu_item_company_mgr::get_photo($biz_member,false,'50','25');?>" <?=$biz_member->biz_logo? " class=mt3" : " width='35' class=mt10";?>> --%>
                               <c:if test="${vo.biz_logo == null}">
                                  <img id="images" src="${allimage}common/no_img.gif" class="mt3">
                               </c:if>
                               <c:if test="${vo.biz_logo != null}">
                                  <img id="images" src="${peg}${vo.biz_logo}" class="mt3">
                               </c:if>   
                            </div>
                            <div class="mt5 num11"><b>[</b>size : 120 * 34 pixel<b>]</b>
                            </div>
                           <div class="mt7">
                              <a onClick="toggleView(99);document.getElementById('mode').value='logo'" style="cursor:pointer">
                                 <img src="${allimage}btn/logo_up.gif">
                              </a>
                           </div>
                           <div id="view99" style="position:relative; display:none;">
                           <div style="position:absolute; left:-76; top:-22; width:300;">
                              <iframe width=0 height=0 name='photo_input' style='display:none;'></iframe>
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                 <form name="regist_ptoto_form" action="/no_regist/regist_photo.php"  enctype="multipart/form-data" target="photo_input" method="POST">
                                    <input type="hidden" id="mode" name="mode" value="logo">
                                    <input type="hidden" id="value" name="value">
                                    <input type="hidden" name="uid" value="${vo.userid}">
                                    <input type="hidden" id="old_photo" name="old_photo" value="${vo.biz_logo}">
                                    <input type="hidden" id="old_photo1" name="old_photo1" value="${vo.photo1}">
                                    <input type="hidden" id="old_photo2" name="old_photo2" value="${vo.photo2}">
                                    <input type="hidden" id="old_photo3" name="old_photo3" value="${vo.photo3}">
                                    <input type="hidden" id="old_photo4" name="old_photo4" value="${vo.photo4}">
                                      <tr>
                                         <td class="bl071_01"></td>
                                         <td class="bl071_02"></td>
                                         <td class="bl071_03"></td>
                                      </tr>
                                      <tr>
                                         <td class="bl071_04"></td>
                                         <%-- <td class="bg_<?=netfu_site_basic_mgr::get_color_top()?> pt7" align="center"> --%>
                                         <td class="bl073 pt7 pb7" align="center">
                                          <input type="file" class="text" name="photo_files"  hname="사진" required style="width:97%">
                                          <div class="mt3 fon11 bl">
                                             ※ 로고 파일형식은 확장자 <b>*.gif</b>, <b>*.jpg</b>만 가능합니다.
                                          </div>
                                           <div class="mt5" align="center">
                                              <input type="image" src="/nad/image/btn19_08.gif"> 
                                              <a onClick="toggleNone(99);" style="cursor:pointer">
                                                 <img src="${image}btn19_07.gif">
                                              </a>
                                           </div>
                                       </td>
                                       <td class="bl071_05"></td>
                                    </tr>
                                    <tr>
                                       <td class="bl071_06"></td>
                                       <td class="bl071_07"></td>
                                       <td class="bl071_08"></td>
                                    </tr>
                                   </form>
                                </table>
                           </div>
                           </div>
                            <div class="pb5 dot_bl b" align="left" style="margin-top:35">
                               <img src="${allimage}bl/bul_04.gif" width="4" hspace="3">포토기업정보
                            </div>
                            <div id=50type align="center">
                               <div class="ln_box wbg" style="width:68; height:45; padding:2;">
                                  <c:if test="${vo.photo1 != null}">
                                     <!-- 기업 정보 사진은 peg 폴더에 저장됨 -->
                                     <img id="images1" src="${peg}${vo.photo1}" style="width:100%;" class="ln_box">
                                  </c:if>
                                  <c:if test="${vo.photo1 == null}">   
                                     <img id="images1" src="${allimage}common/no_img.gif" class="mt10">
                                  </c:if>
                               </div>
                            </div>
                            <div id=50type align="center">
                               <div class="ln_box wbg" style="width:68;height:45;padding:2;">
                                  <c:if test="${vo.photo2 != null}">
                                     <!-- 기업 정보 사진은 peg 폴더에 저장됨 -->
                                     <img id="images2" src="${peg}${vo.photo2}" style="width:100%;" class="ln_box">
                                  </c:if>
                                  <c:if test="${vo.photo2 == null}">   
                                     <img id="images2" src="${allimage}common/no_img.gif" class="mt10">
                                  </c:if>
                               </div>
                            </div>
                            <div id=50type align="center">
                               <div class="ln_box wbg" style="width:68; height:45; padding:2;">
                                  <c:if test="${vo.photo3 != null}">
                                     <!-- 기업 정보 사진은 peg 폴더에 저장됨 -->
                                     <img id="images3" src="${peg}${vo.photo3}" style="width:100%;" class="ln_box">
                                  </c:if>
                                  <c:if test="${vo.photo3 == null}">   
                                     <img id="images3" src="${allimage}common/no_img.gif" class="mt10">
                                  </c:if>                     
                               </div>
                            </div>
                            <div id=50type align="center">
                               <div class="ln_box wbg" style="width:68; height:45; padding:2;">
                                  <c:if test="${vo.photo4 != null}">
                                     <!-- 기업 정보 사진은 peg 폴더에 저장됨 -->
                                     <img id="images4" src="${peg}${vo.photo4}" style="width:100%;" class="ln_box">
                                  </c:if>
                                  <c:if test="${vo.photo4 == null}">   
                                     <img id="images4" src="${allimage}common/no_img.gif" class="mt10">
                                  </c:if>   
                               </div>    
                            </div>
                            <div class="mt7" align="center">
                               <a href="./modify.html?name=#img"><img src="${allimage}btn/photo_up.gif"></a>
                            </div>
                         </td>
                         <td valign="top">
                            <table style="width:100%; border:0px;" cellspacing="0" cellpadding="0">
                               <tr>
                                  <td class="box06_01"></td>
                                  <td class="box06_02"></td>
                                  <td class="box06_03"></td>
                               </tr>
                               <tr>
                                  <td class="box06_04"></td>
                                  <td class="box06">
                                     <table style="width:100%; border:0px;" cellspacing="0" cellpadding="5">
                                        <colgroup><col width="50%"><col width="50%"></colgroup>
                                        <tr valign="top">
                                        <td>
                                           <table style="width:100%; border:0px;" cellspacing="5" cellpadding="0">
                                              <colgroup><col width="25%"><col width="25%"><col width="25%"><col width="25%"></colgroup>
                                              <tr><td class="bl" colspan="4">
                                                 <img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle">
                                                 <b>기업정보</b>
                                              </td></tr>
                                              <tr><td colspan="4" class="ln_bl" height="2"></td></tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">대표자명</b>
                                                 </td>
                                                 <td style="padding:3 3">${vo.biz_recharger}</td>
                                                 <td style="padding:3 3">
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">사원수</b>
                                                 </td>
                                                 <td style="padding:3 3">${vo.biz_men} 명</td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">사업내용</b>
                                                 </td>
                                                    <td colspan="3" style="padding:3 3">
                                                       ${vo.biz_subject}
                                                    </td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">자본금</b>
                                                 </td>
                                                 <td style="padding:3 3">
                                                    <c:if test="${vo.biz_capital == null}">
                                                       -
                                                    </c:if>
                                                    <c:if test="${vo.biz_capital != null}">
                                                       ${vo.biz_capital}
                                                    </c:if>
                                                 </td>
                                                 <td style="padding:3 3">
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">매출액</b>
                                                 </td>
                                                 <td style="padding:3 3">
                                                    <c:if test="${vo.biz_selling == null}">
                                                       - 
                                                    </c:if>
                                                    <c:if test="${vo.biz_selling != null}">
                                                       ${vo.biz_selling}
                                                    </c:if>
                                                 </td>
                                                 </tr>
                                                 <tr>
                                                    <td colspan="4" class="dot"></td>
                                                 </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">연락처</b>
                                                 </td>
                                                 <td colspan="3" style="padding:3 3">
                                                    ${vo.biz_phone}
                                                 </td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">팩스번호</b>
                                                 </td>
                                                 <td colspan="3" style="padding:3 3">
                                                    ${vo.biz_fax}
                                                 </td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">이메일</b>
                                                 </td>
                                                 <td colspan="3" style="padding:3 3">
                                                    <c:if test="${vo.biz_email == null}">
                                                        - 
                                                    </c:if>
                                                    <c:if test="${vo.biz_email != null}">
                                                       <a href="mailto:${vo.biz_email}">
                                                          ${vo.biz_email}
                                                       </a>
                                                    </c:if>
                                                 </td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">홈페이지</b>
                                                 </td>
                                                 <td colspan="3" style="padding:3px 3px;">
                                                    <c:if test="${vo.biz_home == null}">
                                                        - 
                                                    </c:if>
                                                    <c:if test="${vo.biz_home != null}">
                                                       <a href="http://${vo.biz_home}" target="_new">
                                                          http://${vo.biz_home}
                                                       </a>
                                                    </c:if>
                                                 </td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr height=22>
                                                 <td>
                                                    <img src="${allimage}bl/bul_16.gif" hspace="3">
                                                    <b class="fon11">회사주소</b>
                                                 </td>
                                                 <td colspan="3" class="h16" style="padding:3 3">                                                 
                                                    ${vo.biz_address1}&nbsp;${vo.biz_address2}
                                                 </td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" class="dot"></td>
                                              </tr>
                                              <tr>
                                                 <td colspan="4" align="right" class="pt5">
                                                 <a href="/my/modify.html">
                                                    <img src="${allimage}btn/btn19_mod.gif">
                                                 </a>
                                                 </td>
                                              </tr>
                                           </table>
                                        </td>
                                        <td>
                                           <div class="mt3 mb5 bl">
                                              <img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle">
                                              <b>구인 활동내역</b>
                                           </div>
                                           <table style="width:100%; border:0px;" cellspacing="1" cellpadding="5" class="ln">
                                              <tr class="lbg" align="center">
                                                   <td class="fon11">진행중인<br>채용공고</td>
                                                   <td class="fon11">마감된<br>채용공고</td>
                                                 <td class="fon11">인재정보<br>스크랩</td>
                                                 <td class="fon11">입사지원<br>인재정보</td>
                                                 <td class="fon11">면접제의<br>인재정보</td>
                                              </tr>
                                              <tr class="wbg" align="center">
                                                   <td>
                                                      <a href="/my/employ_list.html">
                                                         <!-- 회사명에 따른 진행중인 채용공고 갯수 -->
                                                         <b><!-- <?=netfu_member_mgr::get_item_company_maxlist($biz_member->uid)?> -->0</b>
                                                      </a>
                                                   </td>
                                                   <td>
                                                      <a href="/my/employ_list.html?mode=end">
                                                         <b>!-- <?=netfu_member_mgr::get_item_end_maxlist($biz_member->uid)?> -->4</b>
                                                      </a>
                                                   </td>
                                                   <td>
                                                      <a href="/my/r_scrap.html">
                                                         <b><!-- <?=netfu_member_mgr::get_scrap_com_maxlist($biz_member->uid,job,indi)?> -->0</b>
                                                      </a>
                                                   </td>
                                                   <td>
                                                      <a href="/my/employ_list.html">
                                                         <b><!-- <?=netfu_member_mgr::get_item_indi_maxlist($netfu_member->uid)?> -->0</b>
                                                      </a>
                                                   </td>
                                                   <td>
                                                      <a href="/my/r_interview.html">
                                                         <b><!-- <?=netfu_member_mgr::get_item_interview_maxlist($netfu_member->uid)?> -->0</b>
                                                      </a>
                                                   </td>
                                              </tr>
                                           </table>
   <!--<?
   $user_con = "   where service100 >= curdate() and ((biz_end_day >= curdate() and biz_end_type ='input') or biz_end_type <>'input')  and uid='$netfu_member->uid' and biz_ing='no' ";
   $list = netfu_item_company_mgr::list_object($user_con,3,10);
   $paging = netfu_item_company_mgr::paging_object($user_con, 3,10);
   ?>-->
                                           <div class="mt15 mb5 bl">
                                              <img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle">
                                              <b>등록한 채용정보</b>
                                           </div>
                                           <table style="width:100%; border:0px;" cellspacing="0" cellpadding="0">
                                              <tr>
                                                 <td class="bl071_01"></td>
                                                 <td class="bl071_02"></td>
                                                 <td class="bl071_03"></td>
                                              </tr>
                                              <tr>
                                                 <td class="bl071_04"></td>
                                                 <td>
                                                    <table style="width:95%; border:0px;" cellspacing="0" cellpadding="0" align="center">
                                                      <?if($paging[0]>0){?>
                                                          <tr>
                                                             <td style="padding:3 0 5" class="fon11">
                                                                등록한 <span class="fon11" style="padding:3 0 5">채용공고</span>는 총 
                                                                <b class="bl"><?=$paging[0]?></b> 건 입니다.
                                                             </td>
                                                             <td align="right" valign="top">
                                                                <a href="/my/employ_list.html"><img src="${allimage}btn/btn_memp02.gif" class="mt1"></a>
                                                             </td>
                                                          </tr>
                                                      <?}else{?>
                                                          <tr>
                                                             <td style="padding:3 0 5" class="fon11">
                                                                등록된 채용공고가 없습니다.
                                                             </td>
                                                             <td align="right" valign="top">
                                                                <a href="/my/employ.html">
                                                                   <img src="${allimage}btn/btn_memp01.gif" class="mt1">
                                                                </a>
                                                             </td>
                                                          </tr>
                                                      <?}?>
                                                          <tr><td colspan="2" class="dot"></td></tr>
                                                      <?php foreach($list as $vala) {?>
                                                          <tr>
                                                             <td colspan="2" class="ln_b lsm1 h16" style="padding:7 0 3">
                                                                <a href="/employ/detail.html?no=<?=$vala['no']?>" target="_new">
                                                                   <?= netfu_util::str_cut($vala['biz_title'],20); ?>
                                                                </a><br>
                                                                <font class="fon11 dgr">
                                                                   <?= $code_name[$vala['biz_area1']];?>/
                                                                   <?= $code_name[$vala['biz_area2']];?> | 
                                                                   <?=netfu_config::$job_school2[$vala['biz_ability']];?> | 
                                                                   경력<?= netfu_config::$job_career[$vala['biz_career']];?> | 
                                                                   <?= $code_name[$vala['biz_pay']];?>
                                                                </font><br>
                                                             </td>
                                                          </tr>
                                                      <?}?>
                                                    </table>
                                                </td>
                                                <td class="bl071_05"></td>
                                             </tr>
                                             <tr>
                                                <td class="bl071_06"></td>
                                                <td class="bl071_07"></td>
                                                <td class="bl071_08"></td>
                                             </tr>
                                          </table>                                             
                                        </td>
                                     </tr>
                                     </table>
                                  </td>
                                  <td class="box06_05"></td>
                               </tr>
                            </table>
                         </td></tr>
                      </table>
                  </td>
                  <td class="bl073_05"></td>
               </tr>
               <tr>
                  <td class="bl073_06"></td>
                  <td class="bl073_07"></td>
                  <td class="bl073_08"></td>
               </tr>
            </table>
          </td></tr>
   
          <tr><td class="pt15">
             <table style="width:100%; border:0px;" cellspacing="0" cellpadding="0">
                 <colgroup><col width="49%"><col width="2%"><col width="49%"></colgroup>
                 <tr valign="top">
                    <td>
                    <table style="width:100%; border:0px;" cellspacing="0" cellpadding="2">
                       <tr align="center" height="25">
                      <td width="150" style="cursor:hand;" id="a" onClick="toggleView2(1);"  class="grf_bl fon11 wht">
                         <b>진행중인 채용공고 [</b> 
                         <?=netfu_member_mgr::get_item_company_maxlist($biz_member->uid)?> 
                         <b>]</b>
                      </td>
                         <td style="width:1px;"></td>
                      <td width="140" style="cursor:hand;" id="b" onClick="toggleView2(2);" class="grf_basic fon11">
                         <b>마감된 채용공고 [</b> 
                         <?=netfu_member_mgr::get_item_end_maxlist($biz_member->uid)?> 
                         <b>]</b>
                      </td>
                      <td style="width:1px;"></td>
                      <td align="right" valign="bottom" class="pb5">
                         <a id="d" href="/my/employ_list.html">
                            <img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="4">
                            <img src="${allimage}/ic/txt_more.gif">
                         </a>
                      </td>
                       </tr>
                    </table>
                  <div style="position:relative">
                     <div style="position:relative;top:0; height:137;display:'';" id="e_online_1">
                        <!--<?
                        $user_con_a = " where service100 >= curdate() and ((biz_end_day >= curdate() and biz_end_type ='input') or biz_end_type <>'input')  and uid='$netfu_member->uid' and biz_ing='no' ";
                        $company_list = netfu_item_company_mgr::list_object($user_con_a,10, 10);
                        ?>-->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <colgroup><col width="80%"><col></colgroup>
                           <tr>
                              <td colspan="2" class="ln_bl" height="2"></td>
                           </tr>
                           <?php if(!count($company_list)) { ?>
                              <tr align="center"><td colspan="2" height="40" class="dgr wbg ln_b">내용이 없습니다.</td></tr>
                           <?php   } else  { foreach($company_list as $company_val) { ?>
                           <tr>
                              <td class="pdLlnb2">
                                 <a href="/employ/detail.html?no=<?= $company_val['no'];?>" target="new">
                                    <?=netfu_util::str_cut($company_val['biz_title'], 20,'…');?>
                                 </a>
                              </td>
                              <td class="ln_b" align=center><?= netfu_item_company_mgr::get_end_day($company_val, true);?></td>
                           </tr>
                           <?php }} ?>
                        <!-- loop -->
                        </table>
                     </div>
                  </div>
                  <div style="position:relative">
                     <div style="position:relative;top:0; height:137;display:'none';" id="e_online_2">
                        <!--  <?
                        $user_con_a ="  where ((biz_end_day < curdate() and biz_end_type ='input')  or biz_ing='yes' or service100 < curdate() ) and uid='$netfu_member->uid' ";
                        $company_list = netfu_item_company_mgr::list_object($user_con_a,10, 10);
                        ?> -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <colgroup><col width="80%"><col></colgroup>
                           <tr>
                              <td colspan="2" class="ln_bl" height="2"></td>
                           </tr>
                           <?php if(!count($company_list)) { ?>
                              <tr align="center"><td colspan="2" height="40" class="dgr wbg ln_b">내용이 없습니다.</td></tr>
                           <?php   } else  { foreach($company_list as $company_val) { ?>
                           <tr>
                              <td class="pdLlnb2">
                                 <a href="/employ/detail.html?no=<?= $company_val['no'];?>" target="new">
                                    <?=netfu_util::str_cut($company_val['biz_title'], 20,'…');?>
                                 </a>
                              </td>
                                  <td class="ln_b" align=center>
                                     <?= netfu_item_company_mgr::get_end_day($company_val, true);?>
                                  </td>
                           </tr>
                           <?php }} ?>
                        <!-- loop -->
                        </table>
                     </div>
                  </div>
                   </td>
                    <td></td>
                    <td>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                            <td height="25" style='position:relative' colspan="2" class="pt5">
                               <img src="${allimage}bl/bul_07.gif" hspace="3" align="absmiddle">
                               <b class="bl lsm1">스크랩한 인재정보</b>
                               <div style='position:absolute;right:2; bottom:2'>
                                 <a href="/my/r_scrap.html">
                                    <img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="4">
                                    <img src="${allimage}ic/txt_more.gif">
                                 </a>
                               </div>
                            </td>
                         </tr>
                         <tr>
                            <td colspan="2" class="ln_bl" height="2"></td>
                         </tr>
                        <!-- <?
                        $que  = " where no in (select `no` from netfu_scrap where `type` = 'job' and `sub_type` = 'indi' ) and uid='$netfu_member->uid'";
                        $list = netfu_scrap_mgr::list_object($que, 5, 10);
                        $paging = netfu_scrap_mgr::paging_object($que, 5, 10);
                        ?> -->
                         <?php if(!count($list)) { ?>
                            <tr>
                               <td colspan="2" align="center" class="ln_b h20" style="padding:10 10">스크랩된 인재정보가 없습니다.</td>
                            </tr>
                          <?php } else { foreach($list as $val) {
                                 $obj = netfu_item_indi_mgr::get_object($val['no']);
                                 $member = $netfu_member_mgr->get_member($obj->uid);
                     ?>
                           <colgroup><col width="21%"><col></colgroup>
                         <!-- loop * 10-->
                         <tr>
                            <td class="pdLlnb2">
                               <img src="${allimage}ic/camera.gif"> <?=$obj->name?><br>
                               <font class="fon11">
                                  <b>[</b> 
                                  <?=netfu_util::make_sex($member->sex)?>,
                                  <?=(date("Y")-$member->birth[1]+1)?>세 
                                  <b>]</b>
                               </font>
                            </td>
                            <td class="ln_b h16">
                               <a href="/resume/detail.html?no=<?=$obj->no?>" target="_new">
                               <b><?= netfu_util::str_cut($obj->inid_title,20,…); ?></b><br>
                               <font class="fon11 dgr">
                                  <?=$code_name[$obj->inid_area1]?> 
                                  <?=$code_name[$obj->inid_area3]?> 
                                  <?=$code_name[$obj->inid_area5]?> | 
                                  <?=$code_name[$obj->inid_last_school[1]]?> | 
                                  <?   if($obj->inid_career[1]=='0' and  $obj->inid_career[2]=='0'){
                                    echo "신입";
                                 }else{
                                        echo "경력 ";
                                    echo $obj->inid_career[1]."년";
                                    if($obj->inid_career[2]!="0"){
                                       echo $obj->inid_career[2]."개월";
                                    }
                                 }?>
                              </font>
                           </td>
                        </tr>
                            <!-- loop -->
                          <?php } ?>
                           <?php } ?>
                      </table>
                   </td>
                 </tr>
              </table>
          </td></tr>
   
          <tr><td class="pt15">
             <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                   <td class="bl071_01"></td>
                   <td class="bl071_02"></td>
                   <td class="bl071_03"></td>
                </tr>
                <tr>
                   <td class="bl071_04"></td>
                   <td class="gr_bl fon11 h16" style="padding:7 5;">
                                         <div class="pb3 dot_bl mb7">
                         <img src="${allimage}bl/bul_06.gif" style="margin-right:5">
                         <b class="<?=netfu_site_basic_mgr::get_color_top()?>">채용공고 등록을 하면?!</b>
                      </div>
                      채용공고에 적합한 인재의 이력서를 Smart Match 시스템을 통해 제공해 드립니다.<br>
                      채용공고 관리 내에서 진행중인 채용공고 또는 마감된 채용공고를 실시간으로 확인 및 관리할 수 있습니다. <br>
                      채용공고별로 제공되는 온라인 채용시스템을 통해 인재선발과정을 효율적으로 진행할 수 있습니다.  <br>
                   </td>
                   <td class="bl071_05"></td>
                </tr>
                <tr>
                   <td class="bl071_06"></td>
                   <td class="bl071_07"></td>
                   <td class="bl071_08"></td>
                </tr>
             </table>
          </td></tr>
         <!-- <?
           $type="job";
           $sub_type ="company";
           $to_type="online";
           $que="and j.uid= '".$netfu_member->uid."' ";
           
           $last_que= "SELECT * , r.wdate as wdate , r.no as r_no,i.no as i_no, r.uid as ruid,i.name as iname  FROM netfu_online_recruit AS r, netfu_item_resume AS i , netfu_item_company  AS j  WHERE (r.type = '$type' AND r.sub_type = '$sub_type' AND r.to_type = '$to_type') AND (i.no = r.from_no and j.no =r.to_no) ".$que;
           $total_que= "SELECT  count(*)   FROM netfu_online_recruit AS r, netfu_item_resume AS i , netfu_item_company  AS j  WHERE (r.type = '$type' AND r.sub_type = '$sub_type' AND r.to_type = '$to_type') AND (i.no = r.from_no and j.no =r.to_no) ".$que;
           //echo $total_que;
           $number_per_page = 30;
           $page_per_block = 10;
           $netfu_db = netfu_db::getInstance();
           $list = $netfu_db->queryFetchRows($last_que, $number_per_page, $page_per_block);
           $total = $netfu_db->queryR($total_que);
           $url =$_SERVER['PHP_SELF'].'?page_code='.$page_code.'&to_no='.$to_no;
           $paging = $netfu_db->paging($total, $number_per_page, $page_per_block , $url);  
          ?> 
         -->
   
          <tr><td class="pt15">
             <table style="width:100%; border:0px;" cellspacing="3" cellpadding="4">
                 <colgroup><col width="18%"><col width="60%"><col width="14%"><col width="8%"></colgroup>
                 <tr>
                    <td colspan="3" class="bl" height="13">
                       <img src="${allimage}bl/bul_07.gif" align="absmiddle"> 
                       <b>온라인입사지원한 인재정보</b>
                    </td>
                    <td align="right" valign="bottom" class="pb5">
                       <a href="/my/employ_list.html">
                          <img src="${allimage}bl/bul_16.gif" align="absmiddle" hspace="4">
                          <img src="${allimage}ic/txt_more.gif">
                       </a>
                    </td>
                 </tr>
                 <tr>
                    <td colspan="4" class="ln_bl" height="2"></td>
                 </tr>
               <?php if(!count($list)) { ?>
                  <tr align="center">
                     <td colspan="7" height="40" class="dgr wbg ln_b">등록된 지원 현황이 없습니다.</td>
                  </tr>
               <?php   } else  { ?>
               <?php foreach($list as $val) {
               $member = $netfu_member_mgr->get_member($val['ruid']);
            ?>
   
                 <tr align="center">
                   <td class="ln_b">
                      <img src="${allimage}ic/camera.gif" hspace="4">
                      <?=$val['name']?> 
                      (<?=netfu_util::make_sex($member->sex)?>,
                      <?=(date("Y")-$member->birth[1]+1)?>세)
                   </td>
                    <td class="ln_b h16" align="left">
                       <a href="/resume/detail.html?no=<?=$val['i_no']?>" target="_new">
                          <b><?=$val['inid_title']?></b>
                       </a><br>
                       <font class="fon11 dgr">
                          <?=$code_name[$val['inid_area1']]?>/
                          <?=$code_name[$val['inid_area2']]?>
                          <?/*=$val['inid_area3']?',':''*/?> | 
                          <?=netfu_config::$job_school[netfu_util::make_last_school($val['inid_last_school'])]?>
                       </font>
                    </td>
                    <td class="ln_b h16" align="left">
                       <?=netfu_util::make_career($val['inid_career'])?><br>
                       <?=$code_name[$val['inid_pay']]?>
                    </td>
                    <td class="ln_b num"><?=date("Y/m/d", strtotime($val['wdate']))?></td>
                 </tr>
                  <!-- loop -->
                  <?php }}?>
               </table>
          </td></tr>
       </table>   
  </td>  
  </tr>
</table>   