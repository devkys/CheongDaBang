package com.multi.cdb.yPolicy;

import java.util.List;

public interface YPolicyDAOInterface {
	// 삽입
	public void insert(YPolicyVO vo);

	// 상세검색
	public List<YPolicyVO> search(YPolicyVO vo);

	// 전체 리스트 with paging
	public List<YPolicyVO> YpList(CriteriaYP cri);
	
	// 전체 리스트
	public List<YPolicyVO> all();
	
	// 유형별 리스트
	public List<YPolicyVO> selectOne(String YP_CATEGORY);

	// 정책상세페이지
	public List<YPolicyVO> detailOne(String YP_NAME);
	
	// 정책 아이디로 리스트 가져오기
	public List<YPolicyVO> selectId(String YP_ID);

	// 조회수 증가
	public void viewCount(YPolicyVO vo);
	
	// 페이지 카운트
	public int count();
	
	// 정책 추천
	public List<YPolicyVO> ypRecommend(YPolicyVO vo);

}
