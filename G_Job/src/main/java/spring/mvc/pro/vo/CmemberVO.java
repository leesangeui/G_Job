package spring.mvc.pro.vo;

import java.sql.Date;

public class CmemberVO {

   private int m_type; // 회원 종류(기업 or 회원)
   
   public int getM_type() {
      return m_type;
   }
   public void setM_type(int m_type) {
      this.m_type = m_type;
   }
   
   // 생년일
   private String birth_year;
   private String birth_month;
   private String birth_day;
   
   // 회원 전화번호 (hph + ph)
   private String phone1;
   private String phone2;
   private String phone3;
   private String hphone1;
   private String hphone2;
   private String hphone3;
   
   private String biz_phone1;
   private String biz_phone2;
   private String biz_phone3;
   
   // 회원 email
   private String email1;
   private String email2;
   
   private String biz_email1;
   private String biz_email2;
   
   // 회사 팩스
   private String biz_fax1;
   private String biz_fax2;
   private String biz_fax3;
   
   public String getBirth_year() {
      return birth_year;
   }
   public String getBirth_month() {
      return birth_month;
   }
   public String getBirth_day() {
      return birth_day;
   }
   public String getPhone1() {
      return phone1;
   }
   public String getPhone2() {
      return phone2;
   }
   public String getPhone3() {
      return phone3;
   }
   public String getHphone1() {
      return hphone1;
   }
   public String getHphone2() {
      return hphone2;
   }
   public String getHphone3() {
      return hphone3;
   }
   public String getBiz_phone1() {
      return biz_phone1;
   }
   public String getBiz_phone2() {
      return biz_phone2;
   }
   public String getBiz_phone3() {
      return biz_phone3;
   }
   public String getEmail1() {
      return email1;
   }
   public String getEmail2() {
      return email2;
   }
   public String getBiz_email1() {
      return biz_email1;
   }
   public String getBiz_email2() {
      return biz_email2;
   }
   public String getBiz_fax1() {
      return biz_fax1;
   }
   public String getBiz_fax2() {
      return biz_fax2;
   }
   public String getBiz_fax3() {
      return biz_fax3;
   }

   // 개인회원 + 기업회원 정보
   private int nums; // 회원 시리얼번호 (시퀀스)
   private String userid; // 회원 id
   private String passwd; // 회원비번
   private String password_que; // 비번 찾기 질문
   private String password_chk; // 비번 찾기 답변
   private String jumin; // 주민번호
   private String uname; // 이름
   private String nick_name; // 닉네임
   private String phone; // 연락처
   private String hphone; // 휴대폰번호
   private String birth; // 생일
   private String sex; // 성별
   private String use_mail; // 광고메일 허락여부
   private String use_sms; // 광고문자 허락여부
   private String email; // 이메일
   private String post; // 우편번호
   private String address1; //주소1
   private String address2; //주소2
   private Date wdate; // 가입일
   private Date login_date; // 최종접속일
   private String home; // 개인 홈페이지
   private String photo; // 사진
   private String p_chk; // 사진공개여부
   private String typical; // 회원타입(ex 1:일반 / 2:탈퇴)
   private String last_school; // 최종학력
   private String high_school; // 고등학교 내용
   private String university; // 대학교내용 
   private String lefted; // 탈퇴여부
   private String secession; // 탈퇴사유
   private Date l_date; // 탈퇴 신청일
   private int hit; // 방문수
   
   //기업회원일때만 포함
   private String biz_no; // 사업자번호
   private String biz_copy; // 사업자번호 스캔본
   private String biz_name; // 기업이름
   private String biz_recharger; // 대표자이름
   private String biz_subject; // 사업내용
   private String biz_fonundation; // 설립연도
   private int biz_men; // 사원수
   private String biz_list; // 상장여부
   private String biz_form; // 사업형태
   private String biz_category; // 업종
   private String biz_capital; // 자본금
   private String biz_selling; //매출액
   private String biz_vision; // 기업개요 및 비전
   private String biz_history; //연혁 및 실적
   private String biz_phone; // 회사 전화번호
   private String biz_fax; // 회사 팩스번호
   private String biz_post; // 회사 우편번호
   private String biz_address1; // 회사 주소1
   private String biz_address2; // 회사 주소2
   private String biz_email; // 회사 이메일
   private String biz_home; // 회사 홈페이지
   private String biz_logo; // 회사로고
   private String photo1;
   private String photo2;
   private String photo3;
   private String photo4;
   private String manager;
   private Date resume_search;
   
   public Date getResume_search() {
      return resume_search;
   }
   public void setResume_search(Date resume_search) {
      this.resume_search = resume_search;
   }
   public int getNums() {
      return nums;
   }
   public void setNums(int nums) {
      this.nums = nums;
   }
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
   }
   public String getPasswd() {
      return passwd;
   }
   public void setPasswd(String passwd) {
      this.passwd = passwd;
   }
   public String getPassword_que() {
      return password_que;
   }
   public void setPassword_que(String password_que) {
      this.password_que = password_que;
   }
   public String getPassword_chk() {
      return password_chk;
   }
   public void setPassword_chk(String password_chk) {
      this.password_chk = password_chk;
   }
   public String getJumin() {
      return jumin;
   }
   public void setJumin(String jumin) {
      this.jumin = jumin;
      String[] ujumin = jumin.split("/");
      this.birth_year = ujumin[0];
      this.birth_month = ujumin[1];
      this.birth_day = ujumin[2];
   }
   public String getUname() {
      return uname;
   }
   public void setUname(String uname) {
      this.uname = uname;
   }
   public String getNick_name() {
      return nick_name;
   }
   public void setNick_name(String nick_name) {
      this.nick_name = nick_name;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
      if(!phone.equals("--")) {
      String[] uphone = phone.split("-");
      this.phone1 = uphone[0];
      this.phone2 = uphone[1];
      this.phone3 = uphone[2];
      }
   }
   public String getHphone() {
      return hphone;
   }
   public void setHphone(String hphone) {
      this.hphone = hphone;
      
      String[] uhphone = hphone.split("-");
      this.hphone1 = uhphone[0];
      this.hphone2 = uhphone[1];
      this.hphone3 = uhphone[2];
      
   }
   public String getBirth() {
      return birth;
   }
   public void setBirth(String birth) {
      this.birth = birth;
   }
   public String getSex() {
      return sex;
   }
   public void setSex(String sex) {
      this.sex = sex;
   }
   public String getUse_mail() {
      return use_mail;
   }
   public void setUse_mail(String use_mail) {
      this.use_mail = use_mail;
   }
   public String getUse_sms() {
      return use_sms;
   }
   public void setUse_sms(String use_sms) {
      this.use_sms = use_sms;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
      String[] uemail = email.split("@");
      this.email1 = uemail[0];
      this.email2 = uemail[1];
   }
   public String getPost() {
      return post;
   }
   public void setPost(String post) {
      this.post = post;
   }
   public String getAddress1() {
      return address1;
   }
   public void setAddress1(String address1) {
      this.address1 = address1;
   }
   public String getAddress2() {
      return address2;
   }
   public void setAddress2(String address2) {
      this.address2 = address2;
   }
   public Date getWdate() {
      return wdate;
   }
   public void setWdate(Date wdate) {
      this.wdate = wdate;
   }
   public Date getLogin_date() {
      return login_date;
   }
   public void setLogin_date(Date login_date) {
      this.login_date = login_date;
   }
   public String getHome() {
      return home;
   }
   public void setHome(String home) {
      this.home = home;
   }
   public String getPhoto() {
      return photo;
   }
   public void setPhoto(String photo) {
      this.photo = photo;
   }
   public String getP_chk() {
      return p_chk;
   }
   public void setP_chk(String p_chk) {
      this.p_chk = p_chk;
   }
   public String getTypical() {
      return typical;
   }
   public void setTypical(String typical) {
      this.typical = typical;
   }
   public String getLast_school() {
      return last_school;
   }
   public void setLast_school(String last_school) {
      this.last_school = last_school;
   }
   public String getHigh_school() {
      return high_school;
   }
   public void setHigh_school(String high_school) {
      this.high_school = high_school;
   }
   public String getUniversity() {
      return university;
   }
   public void setUniversity(String university) {
      this.university = university;
   }
   public String getLefted() {
      return lefted;
   }
   public void setLefted(String lefted) {
      this.lefted = lefted;
   }
   public String getSecession() {
      return secession;
   }
   public void setSecession(String secession) {
      this.secession = secession;
   }
   public Date getL_date() {
      return l_date;
   }
   public void setL_date(Date l_date) {
      this.l_date = l_date;
   }
   public int getHit() {
      return hit;
   }
   public void setHit(int hit) {
      this.hit = hit;
   }
   
   
   public String getBiz_no() {
      return biz_no;
   }
   public void setBiz_no(String biz_no) {
      this.biz_no = biz_no;
   }
   public String getBiz_copy() {
      return biz_copy;
   }
   public void setBiz_copy(String biz_copy) {
      this.biz_copy = biz_copy;
   }
   public String getBiz_name() {
      return biz_name;
   }
   public void setBiz_name(String biz_name) {
      this.biz_name = biz_name;
   }
   public String getBiz_recharger() {
      return biz_recharger;
   }
   public void setBiz_recharger(String biz_recharger) {
      this.biz_recharger = biz_recharger;
   }
   public String getBiz_subject() {
      return biz_subject;
   }
   public void setBiz_subject(String biz_subject) {
      this.biz_subject = biz_subject;
   }
   public String getBiz_fonundation() {
      return biz_fonundation;
   }
   public void setBiz_fonundation(String biz_fonundation) {
      this.biz_fonundation = biz_fonundation;
   }
   public int getBiz_men() {
      return biz_men;
   }
   public void setBiz_men(int biz_men) {
      this.biz_men = biz_men;
   }
   public String getBiz_list() {
      return biz_list;
   }
   public void setBiz_list(String biz_list) {
      this.biz_list = biz_list;
   }
   public String getBiz_form() {
      return biz_form;
   }
   public void setBiz_form(String biz_form) {
      this.biz_form = biz_form;
   }
   public String getBiz_category() {
      return biz_category;
   }
   public void setBiz_category(String biz_category) {
      this.biz_category = biz_category;
   }
   public String getBiz_capital() {
      return biz_capital;
   }
   public void setBiz_capital(String biz_capital) {
      this.biz_capital = biz_capital;
   }
   public String getBiz_selling() {
      return biz_selling;
   }
   public void setBiz_selling(String biz_selling) {
      this.biz_selling = biz_selling;
   }
   public String getBiz_vision() {
      return biz_vision;
   }
   public void setBiz_vision(String biz_vision) {
      this.biz_vision = biz_vision;
   }
   public String getBiz_history() {
      return biz_history;
   }
   public void setBiz_history(String biz_history) {
      this.biz_history = biz_history;
   }
   public String getBiz_phone() {
      return biz_phone;
   }
   public void setBiz_phone(String biz_phone) {
      this.biz_phone = biz_phone;
      String[] bbiz_phone = biz_phone.split("-");
      this.biz_phone1 = bbiz_phone[0];
      this.biz_phone2 = bbiz_phone[1];
      this.biz_phone3 = bbiz_phone[2];
   }
   public String getBiz_fax() {
      return biz_fax;
   }
   public void setBiz_fax(String biz_fax) {
      this.biz_fax = biz_fax;
      String[] bbiz_fax = biz_fax.split("-");
      this.biz_fax1 = bbiz_fax[0];
      this.biz_fax2 = bbiz_fax[1];
      this.biz_fax3 = bbiz_fax[2];
   }
   public String getBiz_post() {
      return biz_post;
   }
   public void setBiz_post(String biz_post) {
      this.biz_post = biz_post;
   }
   public String getBiz_address1() {
      return biz_address1;
   }
   public void setBiz_address1(String biz_address1) {
      this.biz_address1 = biz_address1;
   }
   public String getBiz_address2() {
      return biz_address2;
   }
   public void setBiz_address2(String biz_address2) {
      this.biz_address2 = biz_address2;
   }
   public String getBiz_email() {
      return biz_email;
   }
   public void setBiz_email(String biz_email) {
      this.biz_email = biz_email;
      String[] bbiz_email = biz_email.split("@");
      this.biz_email1 = bbiz_email[0];
      this.biz_email2 = bbiz_email[1];
   }
   public String getBiz_home() {
      return biz_home;
   }
   public void setBiz_home(String biz_home) {
      this.biz_home = biz_home;
   }
   public String getBiz_logo() {
      return biz_logo;
   }
   public void setBiz_logo(String biz_logo) {
      this.biz_logo = biz_logo;
   }
   public String getPhoto1() {
      return photo1;
   }
   public void setPhoto1(String photo1) {
      this.photo1 = photo1;
   }
   public String getPhoto2() {
      return photo2;
   }
   public void setPhoto2(String photo2) {
      this.photo2 = photo2;
   }
   public String getPhoto3() {
      return photo3;
   }
   public void setPhoto3(String photo3) {
      this.photo3 = photo3;
   }
   public String getPhoto4() {
      return photo4;
   }
   public void setPhoto4(String photo4) {
      this.photo4 = photo4;
   }
   public String getManager() {
      return manager;
   }
   public void setManager(String manager) {
      this.manager = manager;
   }
}