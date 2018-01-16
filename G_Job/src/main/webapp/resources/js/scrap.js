//스크랩 제어 클래스
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
			alert("회원 전용 기능입니다.");
			return;
		}


		if(this.is_manager) {
			alert("개인회원 전용 기능입니다.");
			return;
		}

		//스크랩을 했는지 체크한다.
		this.mode='check_scrap';
		this.param = {'mode' : this.mode,'type' : this.type, 'sub_type':this.sub_type, 'uid' : this.uid, 'to_no' : this.to_no};

		//스크랩이 되었다면, 정지하고, 되지 않았다면, 스크랩을 한다.
		//비동기식의 문제점. 스레드의 동시성 문제가 발생한다.
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
	//스크랩을 했는지 체크
	check_scrap : function(xmlHttp){
		var result = netfu_util.parseAjax(xmlHttp);

		if(result.result == 'false') {
			alert("이미 스크랩되었습니다.");
			return;
		}

		this.mode='insert';
		this.param = {'mode' : this.mode,'type' : this.type, 'sub_type':this.sub_type, 'uid' : this.uid, 'to_no' : this.to_no};

		//스크랩이 되었다면, 정지하고, 되지 않았다면, 스크랩을 한다.		
		new GoAjax(this, this.url,this.param);
	},
	insert : function(xmlHttp, xJson){
		var result = netfu_util.parseAjax(xmlHttp);
		if(result.result=='true') {
			alert("스크랩되었습니다.");
		} else {
			alert("스크랩이 실패하였습니다.");
		}
	}
});