//서브 카테고리로 채우는 부분
//p_code는 카테고리의 값
//sub는 값을 채울 select 박스
var GetCategory = Class.create({
	initialize: function(type, p_code){		

		this.url = '/no_regist/get_cate.php';
		this.mode = 'get_sub_list';
		this.type = type;
		
		this.param;

		this.p_code = p_code;

		this.func;
		this.val;
		
	},
	
	
	set_type : function(type) {
		this.type = type;
	},

	set_p_code : function(val){
		this.p_code = val;
	},

	set_func : function(func){
		this.func = func;
	},
		//실제로 select 박스에서 호출하는 부분 
	//onchange = sub_category.get_ready(this.value, 'model');
	get_ready : function(type, p_code, func, val){
		this.set_type(type);		
		this.set_p_code(p_code);
		this.set_func(func);
		this.val = val;
		this.get_list();
		
	},
	

	get_list : function(){
		
	
		if(!!this.p_code == false){
			return;
		}
		
		
		this.param = {'mode' : this.mode, 'p_code' : this.p_code, 'type' : this.type};

		
		//값을 가져온다.
		new GoAjax(this, this.url, this.param);
	},


	//ajax처리.
	get_result : function(xmlHttp, xjson){
		var result = netfu_util.parseAjax(xmlHttp);

		//if(result.result == 'false') {
		//	alert(Config.error[result.error]);
		//}

		this.func(result, this.val);

	}
});
