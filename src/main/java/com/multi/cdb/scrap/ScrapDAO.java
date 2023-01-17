package com.multi.cdb.scrap;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScrapDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 일자리 스크랩 10개 출력
	public List<ScrapVO> scrap_job(ScrapVO vo) {
		return mybatis.selectList("scrap.scraplist_Job", vo);
	}

	// 일자리 스크랩 전체 출력
	public List<ScrapVO> scrap_jobAll(ScrapVO vo) {
		return mybatis.selectList("scrap.scraplistAll_Job", vo);
	}
	
	// 청년 정책 스크랩 10개 출력
	public List<ScrapVO> scrap_policy(ScrapVO vo) {
		return mybatis.selectList("scrap.scraplist_Policy", vo);
	}
	
	// 청년 정책 스크랩 전체 출력
	public List<ScrapVO> scrap_policyAll(ScrapVO vo) {
		return mybatis.selectList("scrap.scraplistAll_Policy", vo);
	}
	
	// 임대 주택 스크랩 10개 출력
	public List<ScrapVO> scrap_home(ScrapVO vo) {
		return mybatis.selectList("scrap.scraplist_Home", vo);
	}
	
	// 임대 주택 스크랩 전체 출력
	public List<ScrapVO> scrap_homeAll(ScrapVO vo) {
		return mybatis.selectList("scrap.scraplistAll_Home", vo);
	}
	
	
	
	
	
	
}
