//���� ī�װ��� ä��� �κ�
//p_code�� ī�װ��� ��
//sub�� ���� ä�� select �ڽ�
var SubCategory = Class.create({
	initialize: function(type, p_code, sub){		

		this.url = '/no_regist/get_cate.php';
		this.mode = 'get_sub_list';
		this.type = type;
		
		this.param;

		this.p_code = p_code;
		this.sub = $(sub);

		this.val;

		this.sub2;
		this.val2;
	},
	init : function(p_code, sub, val, sub2, val2){
		
	
		this.set_p_code(p_code);
		this.set_sub(sub);
		//�Ѿ�� ���� �������� ���� �����.
		if(!!p_code == false) {
			$(sub).childNodes[0].selected = true;			
			if(sub2){
				$(sub2).childNodes[0].selected = true;
			}
			
		}

	},

	set_type : function(type) {
		this.type = type;
	},
	//������ select �ڽ����� ȣ���ϴ� �κ� 
	//onchange = sub_category.get_ready(this.value, 'model');
	get_ready : function(p_code, sub, val, sub2, val2){
		if(!!val == true)
			this.val = val;

		if(!!sub == true)			///<------ �̺κ� ����. sub2��� �ϸ� ���� ���� ����.
			this.sub2 = sub2;				
		if(!!val2 == true)
			this.val2 = val2;


		
		this.init(p_code, sub, val, sub2, val2);
		this.get_list();
		
	},

	//������ select �ڽ����� ȣ���ϴ� �κ� 
	//onchange = sub_category.get_ready(this.value, 'model');
	get_ready2 : function(type, p_code, sub, val, sub2, val2){
		this.set_type(type);

		if(!!val == true)
			this.val = val;

		if(!!sub == true)			///<------ �̺κ� ����. sub2��� �ϸ� ���� ���� ����.
			this.sub2 = sub2;				
		if(!!val2 == true)
			this.val2 = val2;


		
		this.init(p_code, sub, val, sub2, val2);
		this.get_list();
		
	},
	set_p_code : function(val){
		this.p_code = val;
	},
	set_sub : function(val){
		this.sub =$(val);
	},
	get_list : function(){
		
	
		if(!!this.sub == false || !!this.p_code == false){
			return;
		}
		
		
		this.param = {'mode' : this.mode, 'p_code' : this.p_code, 'type' : this.type};

		
		//���� �����´�.
		new GoAjax(this, this.url, this.param);
	},


	//ajaxó��.
	get_result : function(xmlHttp, xjson){
		var result = netfu_util.parseAjax(xmlHttp);

		if(result.result == 'false') {
			//alert(Config.error[result.error]);
			var con = this.sub;


			//ù��° <option>
			var temp = con.removeChild(con.firstChild, true);
			netfu_util.delChild(con);		
			con.appendChild(temp);
			con.reInitializeSelectBox()
			return;
		}

		var con = this.sub;


		//ù��° <option>
		var temp = con.removeChild(con.firstChild, true);
		netfu_util.delChild(con);		
		con.appendChild(temp);
		for(var i =0;i<result.lists.length;i++){
			var list = result.lists[i];

			var code = netfu_util.getValue(list, "code");
			var name = netfu_util.getValue(list, "name");

			var opt = new Element("option", {"value": code}).update(name);			

			con.appendChild(opt);
			if(!!this.val == true && this.val == code)
				opt.setAttribute("selected", true);
			//opt.reInitializeSelectBox();
		}

		con.reInitializeSelectBox()

		

		//3������ ���ٸ�, 
		if(this.sub2){
			this.get_ready(this.val, this.sub2, this.val2);
		}

	}
});
