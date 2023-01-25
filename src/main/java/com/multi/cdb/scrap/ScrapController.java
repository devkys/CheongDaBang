package com.multi.cdb.scrap;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.cdb.bbs.BbsVO;
import com.multi.cdb.bbs.ReplyVO;

@Controller
public class ScrapController {
	
	@Autowired
	ScrapService service;
	
	//스크랩 리스트 10개 출력 - 일자리
	@RequestMapping("member/Scrap_Job")
	public void scraplist_Job(Model model, HttpSession session, ScrapVO vo) {
		String id = (String) session.getAttribute("member_id");//형변환
		vo.setScrap_member(id);
		List<ScrapVO> list = service.scrap_joblist(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	//스크랩 리스트 전체 출력 - 일자리
	@RequestMapping("member/Scrap_JobALL")
	public void scraplistAll_Job(Model model, HttpSession session, ScrapVO vo) {
		String id = (String) session.getAttribute("member_id");//형변환
		vo.setScrap_member(id);
		List<ScrapVO> list = service.scrap_joblistall(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	//스크랩 리스트 10개 출력 - 청년정책
	@RequestMapping("member/Scrap_YPolicy")
	public void scraplist_YPolicy(Model model, HttpSession session, ScrapVO vo) {
		String id = (String) session.getAttribute("member_id");//형변환
		vo.setScrap_member(id);
		List<ScrapVO> list = service.scrap_ypolicylist(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	//스크랩 리스트 전체 출력 - 청년정책
	@RequestMapping("member/Scrap_YPolicyALL")
	public void scraplistAll_YPolicy(Model model, HttpSession session, ScrapVO vo) {
		String id = (String) session.getAttribute("member_id");//형변환
		vo.setScrap_member(id);
		List<ScrapVO> list = service.scrap_ypolicylistall(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	//스크랩 리스트 10개 출력 - 임대 주택
	@RequestMapping("member/Scrap_Home")
	public void scraplist_Home(Model model, HttpSession session, ScrapVO vo) {
		String id = (String) session.getAttribute("member_id");//형변환
		vo.setScrap_member(id);
		List<ScrapVO> list = service.scrap_homelist(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	//스크랩 리스트 전체 출력 - 임대 주택
	@RequestMapping("member/Scrap_HomeALL")
	public void scraplistAll_Home(Model model, HttpSession session, ScrapVO vo) {
		String id = (String) session.getAttribute("member_id");//형변환
		vo.setScrap_member(id);
		List<ScrapVO> list = service.scrap_homelistall(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
//	// 스크랩 삭제
//	@RequestMapping("member/scrap_delete${scrap_home.scrap_num}")
//	public void scrapdelete(Model model, HttpSession session, ScrapVO vo, HttpServletRequest request) {
//		// 삭제에 필요한 데이터 전송(scrap_member, scrap_num)
//		String id = (String) session.getAttribute("member_id");//형변환 및 세션 설정된 id 수집
//		String num = request.getParameter("");
//		vo.setScrap_member(id);
//		vo.setScrap_num(num);
//		service.my_scrapdelete(vo);
//		model.addAttribute("vo", vo);
//		
//	}
	
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
