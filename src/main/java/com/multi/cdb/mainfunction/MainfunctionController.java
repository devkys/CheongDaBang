package com.multi.cdb.mainfunction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.cdb.bbs.*;
import com.multi.cdb.job.JobVO;
import com.multi.cdb.yPolicy.YPolicyVO;
import com.multi.cdb.yPolicy.YPolicyfilterVO;

@Controller
public class MainfunctionController {

	@Autowired
	MainfunctionService mainfunctionService;

	@Autowired
	MainfunctionDAO dao;

	// 메인 검색기능
	@RequestMapping("mainfunction/bbsfilter")
	public void bbsfilter(BbsfilterVO vo, Model model) {
		List<BbsfilterVO> list1 = mainfunctionService.bbsfilter(vo);
		model.addAttribute("list1", list1);
		// 검색어 저장
		dao.textinsert(vo);
		System.out.println(list1);
		
	}

	@RequestMapping("mainfunction/newsfilter")
	public void newsfilter(NewsfilterVO vo, Model model) {
		List<NewsfilterVO> list2 = mainfunctionService.newsfilter(vo);
		model.addAttribute("list2", list2);
		// 검색어 저장
		dao.textinsert(vo);
		System.out.println(list2);
		
	}

	@RequestMapping("mainfunction/ypfilter")
	public void ypfilter(YPolicyfilterVO vo, Model model) {
		List<YPolicyfilterVO> list2 = mainfunctionService.ypfilter(vo);
		model.addAttribute("list2", list2);
		// 검색어 저장
		dao.textinsert(vo);
		System.out.println(list2);
		
	}
	// 메인 bbs 리스트
	@RequestMapping("mainfunction/bbsList")
	public void bbslist(Model model) {
		System.out.println();
		List<BbsVO> list = mainfunctionService.bbslist();
		model.addAttribute("list", list);

	}

	// 메인 news 리스트
	@RequestMapping("mainfunction/newsList")
	public void newslist(Model model) {
		System.out.println();
		List<NewsVO> list = mainfunctionService.newslist();
		model.addAttribute("list", list);
		System.out.println(list);
	}

	// 메인 job 리스트
	@RequestMapping("mainfunction/jobList")
	public void joblist(Model model) {
		System.out.println();
		List<JobVO> list = mainfunctionService.joblist();
		model.addAttribute("list", list);
		System.out.println(list);
	}

	// 메인 YP노출
	@RequestMapping("mainfunction/ypList")
	public void YPlist(Model model) {
		System.out.println();
		List<YPolicyVO> list = mainfunctionService.YPlist();
		model.addAttribute("list", list);
	}

	// 메인 검색어 순위
	@RequestMapping("mainfunction/textrank")
	public void textrank(Model model) {
		System.out.println();
		List<filtertextVO> list = dao.textrank();
		model.addAttribute("list", list);
	}

}
