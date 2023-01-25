package com.multi.cdb.yPolicy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YPolicyController {

	@Autowired
	YPolicyServiceImpl yPolicyService;

	@Autowired
	PageService page;

	@Autowired
	GetYpDataMain getYpDataMain; // api 요청 클래스

	// api 요청 클래스
	@RequestMapping("yPolicy/getYpData")
	public void getData() {
		getYpDataMain.main();
	}

	// 첫 페이지 + 페이지 리스트 불러오기
	@GetMapping("yPolicy/yp_all")
	public void yp_all(CriteriaYP cri, Model model) {
		System.out.println("list: " + cri.getPageNum());
		
		// 특정한 페이지 DB에서 목록 가져옴
		List<YPolicyVO> list = yPolicyService.YpList(cri);
		
		// 페이지의 시작, 중간, 끝 페이지 목록
		List<YPolicyVO> allList = yPolicyService.all();
		int totalCount = allList.size();
		System.out.println("totalCount : " +  totalCount); 
		PageVO pageVO = new PageVO(cri, totalCount);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageVO);
	}

	@RequestMapping("yPolicy/selectOne")
	public void selectOne(String YP_CATEGORY, Model model) {
		// System.out.println(YP_CATEGORY);
		List<YPolicyVO> list = yPolicyService.selectOne(YP_CATEGORY);
		System.out.println(list);
		model.addAttribute("list", list);
	}

	@RequestMapping("yPolicy/search")
	public void search(YPolicyVO vo, Model model) {
		System.out.println(vo);
		List<YPolicyVO> list = yPolicyService.search(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}

	@RequestMapping("yPolicy/detailOne")
	public void detailOne(YPolicyVO vo, Model model) {
		// System.out.println(YP_NAME);
		// 상세 페이지 클릭시 조회수 증가
		yPolicyService.viewCount(vo);
		List<YPolicyVO> list = yPolicyService.detailOne(vo.getYP_NAME());
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("yPolicy/ypRecommend")
	public void ypRecommend(YPolicyVO vo, Model model) {
		System.out.println(vo);
		List<YPolicyVO> list = yPolicyService.ypRecommend(vo);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	

}
