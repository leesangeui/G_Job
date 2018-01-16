//���� ī�װ��� ä��� �κ�
//p_code�� ī�װ��� ��
//sub�� ���� ä�� select �ڽ�
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
		//������ select �ڽ����� ȣ���ϴ� �κ� 
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

		
		//���� �����´�.
		new GoAjax(this, this.url, this.param);
	},


	//ajaxó��.
	get_result : function(xmlHttp, xjson){
		var result = netfu_util.parseAjax(xmlHttp);

		//if(result.result == 'false') {
		//	alert(Config.error[result.error]);
		//}

		this.func(result, this.val);

	}
});
