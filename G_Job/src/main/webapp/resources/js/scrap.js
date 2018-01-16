//��ũ�� ���� Ŭ����
var Scrap_ = Class.create({
	initialize : function(is_manager, uid, to_no, type, sub_type){
		this.type=type
		this.sub_type = sub_type;
		this.uid = uid;
		this.to_no = to_no;
		this.is_manager = is_manager;
		this.is_scraped = false;
		
		this.url = "/no_regist/regist_scrap.php";
		this.mode;
		this.param;
	},
	set_sub_type : function(val){
		this.sub_type = val;
	},
	set_type : function(val){
		this.type= val;
	},
	go_scrap : function(){
		if(!!this.uid == false){
			alert("ȸ�� ���� ����Դϴ�.");
			return;
		}


		if(this.is_manager) {
			alert("����ȸ�� ���� ����Դϴ�.");
			return;
		}

		//��ũ���� �ߴ��� üũ�Ѵ�.
		this.mode='check_scrap';
		this.param = {'mode' : this.mode,'type' : this.type, 'sub_type':this.sub_type, 'uid' : this.uid, 'to_no' : this.to_no};

		//��ũ���� �Ǿ��ٸ�, �����ϰ�, ���� �ʾҴٸ�, ��ũ���� �Ѵ�.
		//�񵿱���� ������. �������� ���ü� ������ �߻��Ѵ�.
		new GoAjax(this, this.url,this.param);
	},
	get_result : function(xmlHttp, xJson) {
		//
		if(this.mode=='check_scrap') {
			this.check_scrap(xmlHttp);
		} else if(this.mode=='insert') {
			this.insert(xmlHttp,xJson);
		}
	},
	//��ũ���� �ߴ��� üũ
	check_scrap : function(xmlHttp){
		var result = netfu_util.parseAjax(xmlHttp);

		if(result.result == 'false') {
			alert("�̹� ��ũ���Ǿ����ϴ�.");
			return;
		}

		this.mode='insert';
		this.param = {'mode' : this.mode,'type' : this.type, 'sub_type':this.sub_type, 'uid' : this.uid, 'to_no' : this.to_no};

		//��ũ���� �Ǿ��ٸ�, �����ϰ�, ���� �ʾҴٸ�, ��ũ���� �Ѵ�.		
		new GoAjax(this, this.url,this.param);
	},
	insert : function(xmlHttp, xJson){
		var result = netfu_util.parseAjax(xmlHttp);
		if(result.result=='true') {
			alert("��ũ���Ǿ����ϴ�.");
		} else {
			alert("��ũ���� �����Ͽ����ϴ�.");
		}
	}
});