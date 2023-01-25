package com.multi.cdb.mainfunction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.cdb.bbs.BbsVO;
import com.multi.cdb.bbs.BbsfilterVO;
import com.multi.cdb.bbs.NewsVO;
import com.multi.cdb.bbs.NewsfilterVO;
import com.multi.cdb.job.JobVO;
import com.multi.cdb.yPolicy.YPolicyVO;
import com.multi.cdb.yPolicy.YPolicyfilterVO;

@Service
public class MainfunctionService {
	@Autowired
	MainfunctionDAO dao;

	// 메인 게시물 노출
	public List<BbsVO> bbslist() {
		return dao.bbslist();
	}

	// 메인 게시물 검색(내용, 제목)
	public List<BbsfilterVO> bbsfilter(BbsfilterVO vo) {
		return dao.bbsfilter(vo);
	}

	// 뉴스 메인 노출
	public List<NewsVO> newslist() {
		return dao.newslist();
	}

	// 일자리 메인노출
	public List<JobVO> joblist() {
		return dao.joblist();
	}

	// 뉴스 검색
	public List<NewsfilterVO> newsfilter(NewsfilterVO vo) {
		return dao.newsfilter(vo);
	}

	// 정책 모아보기
	public List<YPolicyVO> YPlist() {
		return dao.YPlist();
	}
	
	//정책 검색
	public List<YPolicyfilterVO> ypfilter(YPolicyfilterVO vo) {
		return dao.ypfilter(vo);
	}

}
