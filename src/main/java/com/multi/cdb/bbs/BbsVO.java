package com.multi.cdb.bbs;

public class BbsVO {
	private int bbs_Id;
	private String bbs_title; 
	private String member_id;
	private String bbs_contents;
	private String bbs_img;
	private int c;
	
	public int getBbs_Id() {
		return bbs_Id;
	}
	public void setBbs_Id(int bbs_Id) {
		this.bbs_Id = bbs_Id;
	}
	public String getBbs_title() {
		return bbs_title;
	}
	public void setBbs_title(String bbs_title) {
		this.bbs_title = bbs_title;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getBbs_contents() {
		return bbs_contents;
	}
	public void setBbs_contents(String bbs_contents) {
		this.bbs_contents = bbs_contents;
	}
	public String getBbs_img() {
		return bbs_img;
	}
	public void setBbs_img(String bbs_img) {
		this.bbs_img = bbs_img;
		
	}
	public int getC() {
		return c;
	}
	public void setC(int c) {
		this.c = c;
	}
	@Override
	public String toString() {
		return "BbsVO [bbs_Id=" + bbs_Id + ", bbs_title=" + bbs_title + ", member_id=" + member_id + ", bbs_contents="
				+ bbs_contents + ", bbs_img=" + bbs_img + "]";
	}
	public void setFile_name(String savedName) {
		// TODO Auto-generated method stub
		
	}
	

	
	
}
