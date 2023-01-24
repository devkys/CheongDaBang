package com.multi.cdb.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {

	
	@Autowired
	ReplyDAO dao;
	
	private ReplyService replyService;
	
	@RequestMapping("bbs/reply_insert")
	public String insert(ReplyVO vo, Model model) {
		try {
			int result = dao.insert(vo);
			String text = "게시물 작성 성공";
			if (result != 1) {
				text = "게시물 작성 실패";
			}
			model.addAttribute("result", text);
			return "redirect:/bbs/bbs_contents?bbs_Id="+vo.getBbs_Id();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/bbs/bbs_contents?bbs_Id="+vo.getBbs_Id();

	}
	
	@RequestMapping("bbs/reply_list")
	public String list(ReplyVO vo ) {
		List<ReplyVO> list = dao.all(vo);
		
		return "redirect:/bbs/bbs_contents?bbs_Id="+vo.getBbs_Id();
		
	}
	
	@RequestMapping("bbs/reply_del")
	public String del(ReplyVO vo ,Model model) {
		try {
			int result = dao.del(vo);
			String text = "댓글 삭제 완료";
			if (result != 1) {
				text = "댓글 삭제 실패";
			}
			model.addAttribute("result", text);
			return "redirect:/bbs/bbs_contents?bbs_Id="+vo.getBbs_Id();
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/bbs/bbs_contents?bbs_Id="+vo.getBbs_Id();
		} 
	}
}
