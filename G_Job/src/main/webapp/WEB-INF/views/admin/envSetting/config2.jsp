<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin_top.jsp" %>
<?php
$type =netfu_util::getParam("type");
$title = netfu_cate_mgr::get_title($type);
$level = netfu_util::getParam("level");
$tar = netfu_util::getParam("tar");
if($level==1 or $level==4){
	$list = netfu_cate_mgr::get_list($type);
}elseif($level > 1) {
	$p_code = netfu_util::getParam("p_code");
	if(!$p_code){
		$p_code="111";
	}
	$list = netfu_cate_mgr::get_list($type,$p_code);
}else{
	$list = netfu_cate_mgr::get_list($type);
}
if(!$code_name) :
	$code_name = netfu_cate_mgr::get_cate();
endif;
?>
<?= $netfu_main->include_editor_js();?>
<?= $netfu_main->include_js($dir_depth, 'form');?>

<script>
function toggleNone(num,height){
	get1 = document.getElementById('oherpromotionview99'); 
	if(num=="on"){
		get1.style.display = "block";
		get1.style.top = height;
		get1.style.left = -20;

	}else{
		if(get1.style.display == "none"){
			get1.style.display = "block";
			get1.style.top = height;
		}else{
			get1.style.display = "none";	
		}	
	}
}
function update_name(code,p_code,name,view,rank,opt1,opt2,opt3,opt4,board_type){
	document.getElementById('val').value=name;
	document.getElementById('code').value=code;
	document.getElementById('mode').value='update_namea';
}
function change_viewa(code,chk){
	//alert(chk);
	name= chk==true ? 'yes' : 'no';
	document.getElementById('val').value=name;
	document.getElementById('code').value=code;
	document.getElementById('mode').value='change_viewa';

	document.regist_board_form.submit();
}
function deletea_name(code){
	//alert(chk);
	get1 = document.getElementById('oherpromotionview99'); 
	get1.style.display = "block";
	document.getElementById('code').value=code;
	document.getElementById('mode').value='deletea';
	document.regist_board_form.submit();
}
function change_rank(chk,code,rank){

	if(chk=="up"){
		rank=Number(rank)-Number(1);
		//alert(rank);
		//rank=Number(rank)-Number(1);
		if(rank <= 0){
			alert("최상위입니다.");
			return;
		}else{
			//alert("aa");
			//alert(document.all.r_name(3).value);	
			code2=document.all.r_name(Number(rank-1)).value;
		}
		
	}else{
		if(Number(rank) >= Number(document.all.r_rank.value)){
			alert("최하위입니다.");
			return;
		}else{
			code2=document.all.r_name(Number(rank)).value;
		}
	}

	document.getElementById('code').value=code;
	document.getElementById('code2').value=code2;
	document.getElementById('mode').value='change_ranka';
		get1 = document.getElementById('oherpromotionview99'); 
		get1.style.display = "";
	document.regist_board_form.submit();
}

</script>
<!---------------------->
<div style="position:relative;">
   <div id="oherpromotionview99" style="position:absolute;display:none;">
  <div><iframe width=0 height=0 name='board_top' style='display:none;'></iframe> 
    <table width="100%" border="0" cellspacing="0" cellpadding="5" bgcolor="#ffffff" class="ln_box">
    <form name="regist_board_form" action="./no_regist.php"  target="board_top" method="POST">
    <input type="hidden" id="mode" name="mode" value="inserta">
    <input type="hidden" id="p_code" name="p_code" value="<?=$p_code?>">
    <input type="hidden" id="code" name="code" value="">
    <input type="hidden" id="code2" name="code2" value="">
    <input type="hidden" id="type" name="type" value="<?=$type?>">
    <tr><td align="center"><input type="text"  id="val"  name="val" class="text" style="width:80%"> <img src=../image/btn19_08.gif align="absmiddle" onClick="document.regist_board_form.submit();"></td></tr>								
    </form>
    </table>
  </div>
  </div>
 <div class="b fon13 bk" align="center" style="margin:10">
  <?	if($level=="1"){
			echo "1차 카테고리설정";
		}elseif($level=="2"){
			echo  $code_name[$p_code]." 2차 카테고리설정";
		}elseif($level=="3"){
			echo $code_name[$p_code]. " 3차 카테고리설정";
		}elseif($level=="4"){
			echo "1차 카테고리설정";
		}elseif($level=="5"){
			echo "2차 카테고리설정";
		}?>
 </div>
<div style="height:480;width:100%;overflow-y: auto;"> 
<table width="100%" border="0" cellspacing="1" cellpadding="2" align="center" bgcolor="#b1b1b1">
	<tbody id="banner_list">
<form name="form1" method="post" action="./banner_regist.html">
 <colgroup><col width="5%"><col width="15%"><col width="45%"><col width="15%"><col width="15%"></colgroup>
  <tr height="25" align="center" class="bg b">				
    <td><input type=checkbox class=chk  onClick="check_all(this, 'sel[]');" name=set_all_select_button></td>									
    <td class="fon11 lsm1">순서</td>
    <td class="fon11">항목</td>
    <td class="fon11">수정</td>
    <td class="fon11">삭제</td>
  </tr>
<?php $i=1; foreach($list as $val) { ?>
  <tr id="__<?= $val['p_code'];?>" height=20 class="wbg" align=center>
    <td><input type=checkbox class=chk name="sel[]" onClick="change_viewa('<?= $val['code'];?>',this.checked);" <?php echo ($val[view] == 'yes')?"checked":"";?>></td>						
    <td>
      <a onClick ="change_rank('up', '<?= $val['code'];?>', '<?= $i;?>');"  style="cursor:pointer"><img src=../image/up.gif></a>
      <a onClick ="change_rank('down', '<?= $val['code'];?>', '<?= $i;?>');"  style="cursor:pointer"><img src=../image/down.gif></a>      
    </td>
    <td align="left" class="pL7">
      <?if($level==1){?>
        <a href='./config2.php?type=<?=$type?>&p_code=<?= $val['code'];?>&level=<?=$level+1;?>&code=<?=$p_code?>&tar=<?=$tar?>'  target='b_middle'>
      <?}elseif($level==2){
		  if($tar!="end"){?>
        <a href='./config2.php?type=<?=$type?>&p_code=<?= $val['code'];?>&level=<?=$level+1;?>&code=<?=$val['p_code'];?>' target='b_right'>
      <?	}
		}elseif($level==4){?>
        <a href='./config2.php?type=<?=$type?>&p_code=<?= $val['code'];?>&level=5&code=<?=$val['p_code'];?>' target='b_middle'>
      <?}?>
      
      <?=$val['name']?><input type="hidden" name="r_name" value="<?=$val['code']?>"></td>
    <td><a onClick="toggleNone('on', event.clientY+15 + document.body.scrollTop + 'px');update_name('<?= $val['code'];?>','<?= $val['p_code'];?>','<?= $val['name'];?>','<?= $val['view'];?>','<?= $val['rank'];?>','<?= $val['opt1'];?>','<?= $val['opt2'];?>','<?= $val['opt3'];?>','<?= $val['opt4'];?>','<?= $val['board_type'];?>');" style="cursor:pointer"><img src=../image/btn19_05.gif></a></td>
    <td><a onClick="deletea_name('<?= $val['code'];?>');" style="cursor:pointer"><img src=../image/btn19_06.gif></a></td>
  </tr>

<?php $i=$i+1; } ?>
  </form>
</tbody>  
</table>

<div align="center" class="mt7"> 
<input type="hidden" name="r_rank" value="<?=$val['rank']?>">

	<? if($type){?>
  <div align="center" class="mt5 mb5"><a onClick="toggleNone('on', event.clientY-60 + document.body.scrollTop + 'px')" style="cursor:pointer"><img src=../image/btn19_add.gif style="margin-bottom:5"></a></div>
  <?}?>
  </div>
  </div>
 </div>
<%@ include file="../../include/admin_botton.jsp" %>