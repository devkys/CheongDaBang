package com.multi.cdb.scrap;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.cdb.bbs.BbsVO;
import com.multi.cdb.bbs.ReplyVO;

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

	// 커뮤니티 작성 글 10개 출력
	public List<BbsVO> my_com(BbsVO vo) {
		return mybatis.selectList("scrap.MyBBS_list", vo);
	}

	// 커뮤니티 작성 글 전체 출력
	public List<BbsVO> my_comAll(BbsVO vo) {
		return mybatis.selectList("scrap.MyBBS_all", vo);
	}

	// 커뮤니티 댓글 10개 출력
	public List<ReplyVO> my_reply(ReplyVO vo) {
		return mybatis.selectList("scrap.MyBBS_replylist", vo);
	}

	// 커뮤니티 댓글 전체 출력
	public List<ReplyVO> my_replyAll(ReplyVO vo) {
		return mybatis.selectList("scrap.MyBBS_replyall", vo);
	}

	// 스크랩 삭제 기능
	public void scrap_delete(ScrapVO vo) {
		mybatis.delete("scrap.scrap_delete", vo);
	}

	// 스크랩 추가
	public void scrap(ScrapVO vo) {
		mybatis.insert("scrap.scrap", vo);
	}

	// 스크랩 중복 방지 위해 갯수 세기
	public int scrap_count(ScrapVO vo) {
		return mybatis.selectOne("scrap.scrapCount", vo);
	}

	

}