package spring.mvc.pro.vo;

import java.sql.Timestamp;

public class CmemberVO {

	// 개인 사용자 회원정보
	private String Mid;
	private String Mpwd;
	private String Mname;
	private String Mjumin1;
	private String Mjumin2;
	private String Mhp;
	private String Memail;
	private Timestamp Mreg_date; // import
	private String Mjob;
	
	//--------------------------------------------------
	
	// 기업 사용자 회원정보
	private String Bid;
	private String Bpwd;
	private String Bname;
	private String Bjumin1;
	private String Bjumin2;
	private String Bhp;
	private String Bemail;
	private Timestamp Breg_date; // import
	
	
	
	public String getMid() {
		return Mid;
	}
	public void setMid(String mid) {
		Mid = mid;
	}
	public String getMpwd() {
		return Mpwd;
	}
	public void setMpwd(String mpwd) {
		Mpwd = mpwd;
	}
	public String getMname() {
		return Mname;
	}
	public void setMname(String mname) {
		Mname = mname;
	}
	public String getMjumin1() {
		return Mjumin1;
	}
	public void setMjumin1(String mjumin1) {
		Mjumin1 = mjumin1;
	}
	public String getMjumin2() {
		return Mjumin2;
	}
	public void setMjumin2(String mjumin2) {
		Mjumin2 = mjumin2;
	}
	public String getMhp() {
		return Mhp;
	}
	public void setMhp(String mhp) {
		Mhp = mhp;
	}
	public String getMemail() {
		return Memail;
	}
	public void setMemail(String memail) {
		Memail = memail;
	}
	public Timestamp getMreg_date() {
		return Mreg_date;
	}
	public void setMreg_date(Timestamp mreg_date) {
		Mreg_date = mreg_date;
	}
	public String getMjob() {
		return Mjob;
	}
	public void setMjob(String mjob) {
		Mjob = mjob;
	}
	public String getBid() {
		return Bid;
	}
	public void setBid(String bid) {
		Bid = bid;
	}
	public String getBpwd() {
		return Bpwd;
	}
	public void setBpwd(String bpwd) {
		Bpwd = bpwd;
	}
	public String getBname() {
		return Bname;
	}
	public void setBname(String bname) {
		Bname = bname;
	}
	public String getBjumin1() {
		return Bjumin1;
	}
	public void setBjumin1(String bjumin1) {
		Bjumin1 = bjumin1;
	}
	public String getBjumin2() {
		return Bjumin2;
	}
	public void setBjumin2(String bjumin2) {
		Bjumin2 = bjumin2;
	}
	public String getBhp() {
		return Bhp;
	}
	public void setBhp(String bhp) {
		Bhp = bhp;
	}
	public String getBemail() {
		return Bemail;
	}
	public void setBemail(String bemail) {
		Bemail = bemail;
	}
	public Timestamp getBreg_date() {
		return Breg_date;
	}
	public void setBreg_date(Timestamp breg_date) {
		Breg_date = breg_date;
	}
	
	
	
}
