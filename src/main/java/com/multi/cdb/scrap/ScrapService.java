package com.multi.cdb.scrap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.cdb.bbs.BbsVO;
import com.multi.cdb.bbs.ReplyVO;

@Service
public class ScrapService {

	@Autowired
	ScrapDAO dao;

	// 일자리 스크랩 리스트 10개 불러오기
	public List<ScrapVO> scrap_joblist(ScrapVO vo) {
		return dao.scrap_job(vo);
	}

	// 일자리 스크랩 리스트 전체 불러오기
	public List<ScrapVO> scrap_joblistall(ScrapVO vo) {
		return dao.scrap_jobAll(vo);
	}
	
	// 청년 정책 스크랩 리스트 10개 불러오기
	public List<ScrapVO> scrap_ypolicylist(ScrapVO vo) {
		return dao.scrap_policy(vo);
	}
	
	// 청년 정책 스크랩 리스트 전체 불러오기
	public List<ScrapVO> scrap_ypolicylistall(ScrapVO vo) {
		return dao.scrap_policyAll(vo);
	}
	
	// 임대 주택 스크랩 리스트 10개 불러오기
	public List<ScrapVO> scrap_homelist(ScrapVO vo) {
		return dao.scrap_home(vo);
	}
	
	// 임대 주택 스크랩 리스트 전체 불러오기
	public List<ScrapVO> scrap_homelistall(ScrapVO vo) {
		return dao.scrap_homeAll(vo);
	}
	
	// 커뮤니티 작성 글 리스트 10개 불러오기
	public List<BbsVO> my_comlist(BbsVO vo) {
		return dao.my_com(vo);
	}

	// 커뮤니티 작성 글 리스트 전체 불러오기
	public List<BbsVO> my_comlistall(BbsVO vo) {
		return dao.my_comAll(vo);
	}
	
	// 커뮤니티 작성 댓글 10개 불러오기
	public List<ReplyVO> my_replylist(ReplyVO vo) {
		return dao.my_reply(vo);
	}
	
	// 커뮤니티 작성 댓글 전체 불러오기
	public List<ReplyVO> my_replylistall(ReplyVO vo) {
		return dao.my_replyAll(vo);
	}
	
	// 스크랩 삭제 기능
	public int my_scrapdelete(ScrapVO vo) {
		return dao.scrap_delete(vo);
	}
	
}