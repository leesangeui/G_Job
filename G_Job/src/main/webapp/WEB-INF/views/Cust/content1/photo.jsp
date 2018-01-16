<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>

<html>
<head>
<title>구인구직솔루션의 최강자 - 넷퓨</title>
<div id=hdivCalender onMouseOver="this.style.visibility='visible'" style="border-width:0px; border-top-color:rgb(102,102,255); border-right-color:rgb(102,102,255); border-bottom-color:rgb(102,102,255); border-left-color:rgb(102,166,255); border-style:solid; width:200px; height:200px; position:absolute; left:50px; top:50px; z-index:1; visibility:hidden;" > 
    <p> </p> 
</div>
<script>jQuery.noConflict();</script>
</head>
<iframe width=0 height=0 name='photo_input' frameborder="0" style='display:;margin:0;padding:0'></iframe> 
   <table width="100%" border="0" cellspacing="0" cellpadding="0">   
      <tr><td>
    <form name="regist_ptoto_form" action="/no_regist/regist_photo.php"  enctype="multipart/form-data" target="photo_input" method="POST">
      <input type="hidden" id="mode" name="mode" value="logo2">
      <input type="hidden" id="value" name="value">
      <input type="hidden" class=text name="uid" value="${userid}">
      <input type="hidden" class=text name="p_uid" value="">
      <input type="hidden" id="old_photo" name="old_photo" value="">
      <input type="hidden" id="old_photo1" name="old_photo1" value="">
      <input type="hidden" id="old_photo2" name="old_photo2" value="">
      <input type="hidden" id="old_photo3" name="old_photo3" value="">
      <input type="hidden" id="old_photo4" name="old_photo4" value="">
      <input type="file" class="text" name="photo_files"  hname="사진" required style="width:250"> 
         <img src="${allimage}btn/btn19_08.gif" onClick="document.getElementById('mode').value='logo2';document.regist_ptoto_form.submit();" style="cursor:pointer" align="absmiddle">
         <img src="${allimage}btn/btn19_06.gif" onClick="chk();" style="cursor:pointer" align="absmiddle">
        <div class="mt3 fon11 gr h16">※ 이미지 파일형식은 확장자 <b>*.gif</b>, <b>*.jpg</b>만 가능합니다.<br>
         ※ 로고 이미지 권장사이즈는 <b>가로120 * 세로34</b>입니다.</div>
             </form>
         </td>
      </tr>

  </table>
  <script>
function chk(){
      document.getElementById('mode').value='delete';
      document.getElementById('old_photo').value=parent.document.getElementById('old_photo').value;   
   document.regist_ptoto_form.submit();
}
</script>