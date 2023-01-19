package com.multi.cdb.bbs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 커뮤니티 작성 글 10개 출력
	public List<BbsVO> my_com(BbsVO vo) {
		return mybatis.selectList("bbs.MyBBS_list", vo);
	}

	// 커뮤니티 작성 글 전체 출력
	public List<BbsVO> my_comAll(BbsVO vo) {
		return mybatis.selectList("bbs.MyBBS_all", vo);
	}
	
	// 커뮤니티 댓글 10개 출력
	public List<ReplyVO> my_reply(ReplyVO vo) {
		return mybatis.selectList("reply.MyBBS_replylist", vo);
	}
	
	// 커뮤니티 댓글 전체 출력
	public List<ReplyVO> my_replyAll(ReplyVO vo) {
		return mybatis.selectList("reply.MyBBS_replyall", vo);
	}

}
