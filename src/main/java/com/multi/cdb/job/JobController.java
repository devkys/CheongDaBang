package com.multi.cdb.job;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("job")
public class JobController {
	@Autowired
	JobService service;
	@Autowired
	GetApiData getApiData;
	@Autowired
	GetApiDataYouth getApiDataYouth;
	
	@Autowired
	PageService page;

	@RequestMapping("insertApi")
	public void name() {
		getApiData.main();
	}
	@RequestMapping("getApiDataYouth")
	public void name2() {
		getApiDataYouth.main();
		
	}

	@RequestMapping("/one")
	public String one(Criteria cri, String pageNum, String job_wantedAuthNo, Model model) {
		List<JobVO> list = service.one(job_wantedAuthNo);
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		return "/job/one";
	}
	@RequestMapping("/details")
	public String details(Criteria cri, String pageNum, String job_wantedAuthNo, Model model) {
		List<YouthJobVO> list = service.details(job_wantedAuthNo);
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		return "/job/details";
	}

	@GetMapping("/recruitList") // 첫페이지용 + 페이지 리스트
	public String recruitList(Criteria cri, Model model) {

		 System.out.println("list : " + cri.getPageNum()); 
		System.out.println("cri : " + cri.toString());
		// 특정한 페이지를 DB에서 목록을 가지고 온다. 10개씩 가져오는 거
		List<JobVO> list = service.getJobByCri(cri);
		// 페이지 시작, 끝, 중간페이지 목록
		//검색 조건에 맞춰서 가져오기
		int totalCount = service.getCountJobByCri(cri);
		System.out.println("totalCount : " + totalCount);
		PageVO pageVO = new PageVO(cri, totalCount);

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageVO);
		
		return "/job/recruitList";
	}
	@GetMapping("/youthJobList") // 첫페이지용 + 페이지 리스트
	public String youthJobList(Criteria cri, Model model) {
		
		System.out.println("list : " + cri.getPageNum()); 
		System.out.println("cri : " + cri.toString());
		// 특정한 페이지를 DB에서 목록을 가지고 온다. 10개씩 가져오는 거
		List<YouthJobVO> list = service.getYouthJobByCri(cri);
		// 페이지 시작, 끝, 중간페이지 목록
		//검색 조건에 맞춰서 가져오기
		int totalCount = service.getCountYouthJobByCri(cri);
		System.out.println("totalCount : " + totalCount);
		PageVO pageVO = new PageVO(cri, totalCount);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageVO);
		
		return "/job/youthJobList";
	}
	
	@GetMapping("/search2") // 첫페이지용 + 페이지 리스트
	public String search2(Criteria cri, Model model) {

		 System.out.println("list : " + cri.getPageNum()); 
		System.out.println("cri : " + cri.toString());
		// 특정한 페이지를 DB에서 목록을 가지고 온다. 10개씩 가져오는 거
		List<JobVO> list = service.getJobByCri(cri);
		// 페이지 시작, 끝, 중간페이지 목록
		//검색 조건에 맞춰서 가져오기
		int totalCount = service.getCountJobByCri(cri);
		System.out.println("totalCount : " + totalCount);
		PageVO pageVO = new PageVO(cri, totalCount);

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageVO);
		
		return "/job/recruitList";
	}
	/*
	 * @GetMapping("/jobList") // 각 페이지리스트(ajax) public void rList(Criteria cri,
	 * Model model) {
	 * 
	 * System.out.println("list : " + cri.getPageNum());
	 * 
	 * List<JobVO> list = service.getJobByCri(cri); // List<JobVO> allList =
	 * service.getAllList(); model.addAttribute("list", list); }
	 */

}
