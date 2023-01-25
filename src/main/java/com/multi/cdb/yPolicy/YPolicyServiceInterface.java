package com.multi.cdb.yPolicy;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface YPolicyServiceInterface {
	// 삽입
	public void insert(YPolicyVO vo);

	// 전체 정책 목록 with paging
	public List<YPolicyVO> YpList(CriteriaYP cri);
	
	// 전체 정책 목록
	public List<YPolicyVO> all();

	// 상세검색
	public List<YPolicyVO> search(YPolicyVO vo);

	// 유형별 리스트
	public List<YPolicyVO> selectOne(String YP_CATEGORY);

	// 정책상세페이지
	public List<YPolicyVO> detailOne(String YP_NAME);

	public List<YPolicyVO> selectId(String YP_ID);

	// 조회수 증가
	public void viewCount(YPolicyVO vo);
	
	// 페이지 카운트
	public int count();
	
	// 정책 추천
	public List<YPolicyVO> ypRecommend(YPolicyVO vo);
}
