package com.multi.cdb.scrap;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	
	
	
	
	
	
	
	
}
