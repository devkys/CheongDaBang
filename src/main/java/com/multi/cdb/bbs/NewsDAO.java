package com.multi.cdb.bbs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NewsDAO {
	
	@Autowired
	SqlSessionTemplate my;

	//메인 뉴스노출
	public List<NewsVO> list() {
		return my.selectList("news.list");
	}
	
	//뉴스 제목 검색
	public List<NewsVO> list2(NewsVO vo) {
		System.out.println("키워드값 테스트 : " + vo.getFiltertext());
		return my.selectList("news.one", vo);
	}
}
