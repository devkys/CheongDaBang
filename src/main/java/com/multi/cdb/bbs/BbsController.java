package com.multi.cdb.bbs;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsService service;

	// 커뮤니티 작성 글 리스트 출력
	@RequestMapping("member/MyBbs")
	public void comlist(BbsVO vo, HttpSession session, Model model) {
		String id = (String) session.getAttribute("member_id");
		vo.setMember_id(id);
		List<BbsVO> list = service.my_comlist(vo);
		model.addAttribute("list", list);
	}
	
	// 커뮤니티 작성 글 전체 리스트 출력
	@RequestMapping("member/MyBbsALL")
	public void comlistAll(BbsVO vo, HttpSession session, Model model) {
		String id = (String) session.getAttribute("member_id");
		vo.setMember_id(id);
		List<BbsVO> list = service.my_comlistall(vo);
		model.addAttribute("list", list);
	}
	
	// 커뮤니티 댓글 리스트 출력
	@RequestMapping("member/MyBbsReply")
	public void replylist(ReplyVO vo, HttpSession session, Model model) {
		String id = (String) session.getAttribute("member_id");
		vo.setMember_id(id);
		List<ReplyVO> list = service.my_replylist(vo);
		model.addAttribute("list", list);
	}
	
	// 커뮤니티 댓글 전체 리스트 출력
	@RequestMapping("member/MyBbsReplyALL")
	public void replylistAll(ReplyVO vo, HttpSession session, Model model) {
		String id = (String) session.getAttribute("member_id");
		vo.setMember_id(id);
		List<ReplyVO> list = service.my_replylistall(vo);
		model.addAttribute("list", list);
	}
	
}
