package com.multi.cdb.scrap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/scrap")
public class ScrapController {

	@Autowired
	ScrapService service;

	@RequestMapping("/Scrap_Job")
	public void scraplist_Job(Model model) {
		List<ScrapVO> list = service.scrap_joblist();
		model.addAttribute("list", list);
	}
	
	// 공공 "임대" 주택 스크랩 컨트롤러
	@RequestMapping(value = "/rent_scrap", method = RequestMethod.POST)
	public @ResponseBody int rent(@RequestBody ScrapVO vo) {
		int scrap = service.scrap_count(vo);
		System.out.println(vo);
		if (scrap == 0) {
			service.scrap(vo);
		} else if (scrap == 1) {
			service.scrap_delete(vo);
		}
		return scrap;
	}

	// 공공 "분양" 주택 스크랩 컨트롤러
	@RequestMapping(value = "/sale_scrap", method = RequestMethod.POST)
	public @ResponseBody int sale(@RequestBody ScrapVO vo) {
		int scrap = service.scrap_count(vo);
		System.out.println(vo);
		if (scrap == 0) {
			service.scrap(vo);
		} else if (scrap == 1) {
			service.scrap_delete(vo);
		}
		return scrap;
	}

	@RequestMapping(value = "/policy_scrap", method = RequestMethod.POST)
	public @ResponseBody int policy(@RequestBody ScrapVO vo) {
		int scrap = service.scrap_count(vo);
		System.out.println(vo);
		if (scrap == 0) {
			service.scrap(vo);
		} else if (scrap == 1) {
			service.scrap_delete(vo);
		}
		return scrap;
	}

	@RequestMapping(value = "/job_scrap", method = RequestMethod.POST)
	public @ResponseBody int job(@RequestBody ScrapVO vo) {
		int scrap = service.scrap_count(vo);
		System.out.println(vo);
		if (scrap == 0) {
			service.scrap(vo);
		} else if (scrap == 1) {
			service.scrap_delete(vo);
		}
		return scrap;
	}
	
	
	/*
	 * 만약 파라미터가 ScrapVO 객체가 아닌 쿼리로 넘어올 경우
	 */

//	@RequestMapping(value="/sale_scrap", method = RequestMethod.POST)
//	public @ResponseBody int sale(@RequestParam("title") String title, @RequestParam("url") String url, @RequestParam("scrap_member") String scrap_member) {
//		int scrap = service.rent_scrap_count(url, scrap_member);
//		
//		if(scrap == 0) {
//			service.sale_scrap(title, url, scrap_member);
//		} else if(scrap == 1) {
//			service.rent_scrap_delete(url, scrap_member);
//		}
//		return scrap;
//	}

}
