package com.multi.cdb.scrap;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScrapDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<ScrapVO> scrap_job() {
		return mybatis.selectList("scrap.scraplist_Job");
	}

	// 스크랩 추가
	public void scrap(ScrapVO vo) {
		mybatis.insert("scrap.scrap", vo);
	}
	
	// 스크랩 중복 방지 위해 갯수 세기
	public int scrap_count(ScrapVO vo) {
		return mybatis.selectOne("scrap.scrapCount", vo);
	}
	
	// 스크랩 취소 
	public void scrap_delete(ScrapVO vo) {
		mybatis.delete("scrap.scrapDelete", vo);
	}
}
