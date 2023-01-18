package com.multi.cdb.bbs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component
public class BbsDAO{

	@Autowired
	SqlSessionTemplate my;

	//게시물 메인화면 출력
	public List<BbsVO> list() {
		return my.selectList("bbs.list");
	}
	
	//게시물 검색
	public List<BbsVO> list1(BbsVO vo) {
		System.out.println("키워드값 테스트 : " + vo.getFiltertext());
		return my.selectList("bbs.one", vo);
	}
}
