/*--------------------------------
�Ѹ����
������ : mins01(���뿩��)
hp : mins01.woobi.co.kr
MSN & NateOn : mins01(at)lycos.co.kr
------------=----------------------
����
<div>
  <div>1</div>
  <div>2</div>
  <div>3</div>
  <div>4</div>
<div>
ó�� ������ �������մϴ�.
���� <div>�� �� style.height ���� �������մϴ�.
�ȿ��� <div>�� �ƴ� ���� ���� �����˴ϴ�.

var roll2 = new rolling_banner(document.getElementById('test2'));	
roll2.start();

ó�� ��ũ��Ʈ�� �����ϸ� �˴ϴ�.
----------------------------------*/
var rolling_banner = function(ta){
	this.ta = ta;
//	this.ta.className = 'rolling_banner';	
	this.ta_id = 'roll_'+(this.ta.id||this.ta.name);
	this.gap = 5;					//�����̴� �ȼ�����
	this.gap_count=0;			//ī���ÿ�:�ǵ��� ������
	this.gap_time = '1000';		//�����̴� �����ð�
	this.gap_sleep = '2000';	//ȭ���� �������� �����ð�
	this.over_stop = true;  //���콺�� �÷��� �� ���� ���ΰ�?
	this.timer = null;
	eval(this.ta_id+'=this');
	var temp = eval(this.ta_id);
	this.init_div();	
}
rolling_banner.prototype.start = function(){	//�Ѹ� ����
	this.ta.readonly =false;
	this.stop =false;	
	if(!this.timer){ this.rolling();	 }
}
rolling_banner.prototype.stop = function(){	//�Ѹ� ����
	this.stop =true;
}
rolling_banner.prototype.init_div = function(){	//<div> ���� ���� ���� , ��Ÿ�� �ʱ�ȭ
	this.ta.style.position="relative";
	this.ta.style.overflow="hidden";
  	this.ta.onmouseover=function(){ eval("this.readOnly=true;"); }
  	this.ta.onmouseout=function(){ eval("this.readOnly=false;"); }

	var child = this.ta.childNodes;
	var ch = this.ta.firstChild;
	var ch2 = null;
	while(ch){
		ch2 = ch.nextSibling;
		if(ch.nodeName.toLowerCase() !='div'){
		this.ta.removeChild(ch);
		}else{
		ch.style.position = "relative";
		ch.style.borderStyle='none';
		ch.style.top='0px';
		}
		ch=ch2;
	}
}
rolling_banner.prototype.strtonum = function(str){
	var num = parseInt(str);
	if(isNaN(num)) num = '0';
	return num
}
rolling_banner.prototype.strtopx = function(str){
	var num = this.strtonum(str);
	return num+'px';
}
rolling_banner.prototype.rolling = function(){
	if(this.gap_count==0){
		this.sleep();
		this.gap_count+=1;
		return;
	}
	if(!this.ta.readOnly && !this.stop){
		this.rolling_top();
	}
	this.timer = null;
	var re = this.ta_id+'.rolling()';
	this.timer = setTimeout(re,this.gap_time);
}
rolling_banner.prototype.rolling_top = function(){
	this.gap_count+=parseInt(this.gap);
	var ch1 = this.ta.firstChild;
	var child = this.ta.childNodes;
	var ta_ch = null;
	var	top_ori = this.strtonum(child[0].style.top);
	var top = this.strtopx(top_ori-parseInt(this.gap));			
	for(var i=0,m=child.length;i<m;i++){
		child[i].style.top=top;
	}
	if(this.gap_count >= this.strtonum(ch1.style.height)){
		var temp =ch1.cloneNode(true);	
		this.ta.removeChild(ch1);
		this.ta.appendChild(temp);
		for(var i=0,m=child.length;i<m;i++){
			child[i].style.top='0px';
		}		
	this.gap_count = 0		
	}
}
rolling_banner.prototype.sleep = function(){
	this.timer = null;
	var re = this.ta_id+'.rolling()';
	this.timer = setTimeout(re,this.gap_sleep);
}
