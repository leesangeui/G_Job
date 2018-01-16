/// 스트링 객체에 메소드 추가 ///
String.prototype.trim = function(str) { 
	str = this != window ? this : str; 
	return str.replace(/^\s+/g,'').replace(/\s+$/g,''); 
}

String.prototype.hasFinalConsonant = function(str) {
	str = this != window ? this : str; 
	var strTemp = str.substr(str.length-1);
	return ((strTemp.charCodeAt(0)-16)%28!=0);
}

String.prototype.bytes = function(str) {
	str = this != window ? this : str;
	var len = 0;
	for(var j=0; j<str.length; j++) {
		var chr = str.charAt(j);
		len += (chr.charCodeAt() > 128) ? 2 : 1
	}
	return len;
}

String.prototype.number_format=function(){
	return this.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,');
}

Array.prototype.shuffle = function() { 
	return this.concat().sort(function() {
		return Math.random() - Math.random();
	});
}
//우편번호 검사.
var netfu_util = {
	onlyDigit : function(el){
		$(el).value = $(el).value.replace(/\D+/, '');

	},
	searchPost : function(post1, post2, addr1, addr2){
		var w = 560;
		var h = 320;
		var x = (screen.width - w) / 2;
		var y = (screen.height - h) / 2;

		var win;
		if(win)
			win.focus();
		else {
			post1 = !!post1 == true ? post1 : '';
			post2 = !!post2 == true ? post2 : '';
			addr1 = !!addr1 == true ? addr1 : '';
			addr2 = !!addr2 == true ? addr2 : '';

						
			var url = '/post/find_post.php?post1='+post1+'&post2='+post2+'&addr1='+addr1+'&addr2='+addr2;
			win = window.open(url,"post_win", "width="+w+", height="+h+", menubar=no, scrollbars=yes, left="+x+", top="+y);
		}
	}, 

	new_searchPost : function(post1, post2, addr1, addr2){
		var w = 560;
		var h = 320;
		var x = (screen.width - w) / 2;
		var y = (screen.height - h) / 2;

		var win;
		if(win)
			win.focus();
		else {
			post1 = !!post1 == true ? post1 : '';
			post2 = !!post2 == true ? post2 : '';
			addr1 = !!addr1 == true ? addr1 : '';
			addr2 = !!addr2 == true ? addr2 : '';

						
			var url = '/post/new_find_post.php?post1='+post1+'&post2='+post2+'&addr1='+addr1+'&addr2='+addr2;
			win = window.open(url,"post_win", "width="+w+", height="+h+", menubar=no, scrollbars=yes, left="+x+", top="+y);
		}
	}, 

	new_company_searchPost : function(post1, post2, addr1, addr2){
		var w = 560;
		var h = 320;
		var x = (screen.width - w) / 2;
		var y = (screen.height - h) / 2;

		var win;
		if(win)
			win.focus();
		else {
			post1 = !!post1 == true ? post1 : '';
			post2 = !!post2 == true ? post2 : '';
			addr1 = !!addr1 == true ? addr1 : '';
			addr2 = !!addr2 == true ? addr2 : '';

						
			var url = '/post/new_company_find_post.php?post1='+post1+'&post2='+post2+'&addr1='+addr1+'&addr2='+addr2;
			win = window.open(url,"post_win", "width="+w+", height="+h+", menubar=no, scrollbars=yes, left="+x+", top="+y);
		}
	}, 
	
	//자식 윈도우 삭제하기
	delChild : function(el){
		
		var childs = $(el).childNodes;		
		if(!childs.length)
			return;	
		for(var i = 0;i<childs.length;i++){
			var child = childs[i];
			el.removeChild(child, true);
		}

		childs = el.childNodes;
		
		if(childs) {
			netfu_util.delChild(el);
		}
	},
	getValue : function(el, val){
		if(el.getElementsByTagName(val))
			if(el.getElementsByTagName(val)[0])
				if(el.getElementsByTagName(val)[0].firstChild)
					if(el.getElementsByTagName(val)[0].firstChild.nodeValue)
						return el.getElementsByTagName(val)[0].firstChild.nodeValue;

		return'';
	},	
	
	valid_hphone : function(el,value) {
		var pattern = /^([0]{1}[0-9]{1,2})-?([1-9]{1}[0-9]{2,3})-?([0-9]{4})$/;
		var num = value ? value : el.value;
		if (pattern.exec(num)) {
			var hphones = new Array("011","016","017","018","019","010");
			if(netfu_util.in_array(RegExp.$1, hphones, false)) {
				if(!el.getAttribute('SPAN')) el.value = RegExp.$1 + "-" + RegExp.$2 + "-" + RegExp.$3;
				return true;
			}
		}
		return false;
	},
	
	in_array : function(value, array, similar) {
		for(var i=0; i<array.length; i++) {
			if(similar==true) {
				if(value.indexOf(array[i]) != -1) return true; // 비슷한 값
			} else {
				if(array[i]==value) return true; // 동일한 값
			}
		}
		return false;
	},
	//셀렉트 박스에서 val값을갖고 있는지,
	make_select : function(id, val){
		var list = $(id);
		if(!list.length){
			return;
		}

		if(id=='model')
			return;

		if(!val) {
			list[0].selected = true;
		}
		for(var i =0;i<list.length;i++){
			if(!!list[i].value != false && list[i].value == val)
				list[i].selected = true;
		}
	},
	//src : 경로
	//id : 이미지 아이디
	//w : width
	//h : height
	//t :transparent
	//m : menu
	//flag : 리턴할 것인지,출력할 것인지.
	fm : function(src, id, w, h, t, m, flag) {		
		var s = '';
		var s_id = '';
		var s_t = '';
		(id == "") ? s_id="swf" : s_id = id;
		(t == "Y") ? s_t = '<param name="wmode" value="transparent">' : s_t='';
		(m == "Y") ? m = 'true' : m = 'false';

		s += '<object type="application/x-shockwave-flash" ';
		s += 'classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" ';
		s += 'codebase="http://fpdownload.macromedia.com/';
		s += 'pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0"';
		s += 'id="'+s_id+'"';
		s += !!w == true ? ' width="'+w+'"' : '';
		s += !!h == true ? ' height="'+h+'"' : '';
		s += '>';

		s += '<param name="movie" value="'+src+'">';
		s += '<param name="quality" value="high">';	
		s += s_t;
		s += '<param name="menu" value="'+m+'">';
		s += '<param name="swliveconnect" value="true">';
		s += '<param name="wmode" value="transparent">';


		s += '<embed src="'+src+'" quality="high" menu="'+m+'" ';
		s += 'width="'+w+'" height="'+h+'" swliveconnect="true" ';
		s += 'id="'+s_id+'" name="'+s_id+'" type="application/x-shockwave-flash" ';
		s += 'pluginspage="http://www.macromedia.com/go/getflashplayer"><\/embed>';

		s += '<\/object>';

		
		if(flag)
			return s;
		document.write(s);
	},

	insertBefore : function(obj, obj2) {
		try{
			if(obj == obj.parentNode.firstChild)
				return false;
		}catch(e){
			alert(e.message);
		}

		var tmp = obj.parentNode.removeChild(obj);
		obj2.parentNode.insertBefore(tmp, obj2);

	},
	insertAfter : function(obj, obj2){
		return netfu_util.insertBefore(obj2, obj);
	},

	//flag가 있으면 값을 출력한다.
	parseAjax : function(xmlHttp, flag){
		var text = xmlHttp.responseText;
		var xmlDoc = xmlHttp.responseXML;
		//출력안될때 	alert(text);	
			
		if(flag)  {
			alert(text);	
			//return null;
		}
		

		var root_element = xmlDoc.firstChild;
			
		if(root_element.nodeType == 7)
			root_element = xmlDoc.getElementsByTagName("root_element")[0];

		try{
			var result = root_element.getAttribute("result") ? root_element.getAttribute("result") : root_element.result;
			var error = root_element.getAttribute("error") ? root_element.getAttribute("error") : root_element.error;
			//var count = root_element.getAttribute("count") ? root_element.getAttribute("count") : root_element.count;			
		} catch(e) {
			if(flag) {
				alert(e.message);
				return null;
			} else
				return null;
		}
		
		if(result=='true'){				
			var lists = root_element.getElementsByTagName("list");
		}else {
			var lists = null;
		}

		var _result = new Object();
		_result.result = result;
		_result.lists = lists;
		_result.xmlHttp = xmlHttp;
		_result.error = error;

		return _result;
	}
	
}


var GoAjax = Class.create({
	initialize : function(obj,url,param){
		try{
		//	alert(url+":"+$H(param).toQueryString());
			var http = new Ajax.Request(url, {
				method : 'post',
				asynchronous : true, 
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				parameters : param,
				onSuccess : function(xmlHttp, xjson) {
				//	alert(xmlHttp.responseText);
					obj.get_result(xmlHttp, xjson, param);
					if(http)
						http = null;
				},
				onFailure : function(){
					alert("전송이 실패하였습니다.");
				}
			});
		} catch(e){
			alert(e.message);
		}
	}
});