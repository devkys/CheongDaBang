package com.multi.cdb.emotion;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.cdb.yPolicy.YPolicyServiceImpl;
import com.multi.cdb.yPolicy.YPolicyVO;

@Controller
@RequestMapping("/emotion")
public class DictionaryController {

	@Autowired
	DictionaryServiceImpl dictionaryService;

	@Autowired
	YPolicyServiceImpl yPolicyService;
	
	@RequestMapping("review")
	public void review(@RequestParam("yp_name") String yp_name, @RequestParam("yp_id") String yp_id,  Model model) {
		System.out.println("--------------");
		List<YPolicyVO> list = yPolicyService.detailOne(yp_name);
		System.out.println(list);
		System.out.println(yp_name);
		model.addAttribute("list", list);
		int jumsu = dictionaryService.sel_jumsu(yp_id);
		model.addAttribute("jumsu", jumsu);
		System.out.println(jumsu);
	}

	@RequestMapping("review_input")
	public String output(ReviewVO vo, Model model, HttpServletRequest request) {
		System.out.println("emotion컨트롤러 >> " + vo);
		dictionaryService.insert(vo);
		int jumsu = dictionaryService.emotion(vo);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
		
	}
	
	@RequestMapping("show_review")
	@ResponseBody
	public Object list(@RequestParam("yp_id") String yp_id,Model model) {
		List<ReviewVO> list = dictionaryService.list(yp_id);
		System.out.println("여러개의 documents검색 결과>> " + list);
		model.addAttribute("list", list);
		
		return list;
	}
	
	
}
