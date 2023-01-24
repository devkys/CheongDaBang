package com.multi.cdb.mainfunction;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.cdb.bbs.BbsVO;
import com.multi.cdb.bbs.BbsfilterVO;
import com.multi.cdb.bbs.NewsVO;
import com.multi.cdb.bbs.NewsfilterVO;
import com.multi.cdb.job.JobVO;
import com.multi.cdb.yPolicy.YPolicyVO;

@Repository
public class MainfunctionDAO {

	@Autowired
	SqlSessionTemplate my;

	// 게시물 메인화면 출력
	public List<BbsVO> bbslist() {
		return my.selectList("function.bbslist");
	}

	// 게시물 검색
	public List<BbsfilterVO> bbsfilter(BbsfilterVO vo) {
		System.out.println("키워드값 테스트 : " + vo.getFiltertext());
		return my.selectList("function.bbsfilter", vo);
	}

	// 채용정보 추가
	public List<JobVO> joblist() {
		return my.selectList("function.joblist");
	}

	// 메인 뉴스노출
	public List<NewsVO> newslist() {
		return my.selectList("function.newslist");
	}

	// 뉴스 제목 검색
	public List<NewsfilterVO> newsfilter(NewsfilterVO vo) {
		System.out.println("키워드값 테스트 : " + vo.getFiltertext());
		return my.selectList("function.newsfilter", vo);
	}

	// 정책 모아보기
	public List<YPolicyVO> YPlist() {
		return my.selectList("function.YPlist");
	}

	// 검색어 저장
	public void textinsert(BbsfilterVO vo) {
		my.selectOne("function.textcreate", vo);
	}

	// 검색어 저장
	public void textinsert(NewsfilterVO vo) {
		my.selectOne("function.textcreate", vo);
	}

	// 검색어 순위
	public List<filtertextVO> textrank() {
		return my.selectList("function.textranknum");
	}

}
