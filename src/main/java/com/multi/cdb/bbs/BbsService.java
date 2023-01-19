package com.multi.cdb.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BbsService {
	
	@Autowired
	BbsDAO dao;

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
}
