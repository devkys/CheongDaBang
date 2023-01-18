package com.multi.cdb.mainfunction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.cdb.bbs.BbsDAO;
import com.multi.cdb.bbs.BbsService;
import com.multi.cdb.bbs.BbsVO;


@Controller
public class BbsController {

	@Autowired
	BbsService bbsService;
	

	@RequestMapping("mainfunction/bbsList")
	public void list(Model model) {
		System.out.println();
		List<BbsVO> list = bbsService.list();
		model.addAttribute("list", list);
		
	}
	

}
