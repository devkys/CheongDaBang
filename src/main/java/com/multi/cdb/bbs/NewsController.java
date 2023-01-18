package com.multi.cdb.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {

	@Autowired
	NewsDAO dao;
	
	@RequestMapping("rnews_insert.do")
	public void insert(NewsVO vo, Model model) {
		//리뷰<--- movie(oriId, img)
		//insert into review values (null, #{oriId}, #{content}, #{writer})
		//화면만들때는 
		//review + movie(oriId, img)
		
		int result = dao.insert(vo);
		String text = "게시물 작성 성공";
		if(result != 1) {
			text = "게시물 작성 실패";
		}
		model.addAttribute("result", text);

	}
/*	@RequestMapping("NewsDel")
	public void delete(NewsVO vo, Model model) {
		int result = dao.del(vo);
		model.addAttribute("result", result);
	}
	
	*/
	
}
