package com.multi.cdb.yPolicy;

// 
public class CriteriaYP {
	private int pageNum; // 페이지번호
	private int amount; // 한 페이지당 글 개수

	private int startRow; // 가져올 글의 행 번호

	public CriteriaYP() {
		this(1, 28);
	}

	public CriteriaYP(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
}
