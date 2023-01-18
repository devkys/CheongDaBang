package com.multi.cdb.mainfunction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.cdb.bbs.*;

@Controller
public class FilterController {
	
	
	@Autowired
	NewsDAO newsService;
	
	@Autowired
	BbsService bbsService;
	
	@RequestMapping("mainfunction/bbsfilter")
	public void bbsfilter(BbsVO vo, Model model) {
		List<BbsVO> list1 = bbsService.list1(vo);
		model.addAttribute("list1", list1);
		System.out.println("키워드값 테스트 컨트롤러 : " + vo.getFiltertext());
		System.out.println(list1);
		
	}
	
	@RequestMapping("mainfunction/newsfilter")
	public void newsfilter(NewsVO vo, Model model) {
		List<NewsVO> list2 = newsService.list2(vo);
		model.addAttribute("list2", list2);
		System.out.println("키워드값 테스트 컨트롤러 : " + vo.getFiltertext());
		System.out.println(list2);
		
	}

}
