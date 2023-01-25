package com.multi.cdb.bbs;

import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.xdevapi.Result;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;

	@Autowired
	ReplyDAO dao2;

	@Autowired
	BbsPageService page;

	
	@RequestMapping("bbs/bbs_all")
	public void all(BbsPageVO vo, Model model) {
		List<BbsVO> list = dao.all();

		int count = dao.count(); // 게시물 전체 개수
		int pages = page.pages(count);

		model.addAttribute("list", list);
		model.addAttribute("pages", pages); // int
		model.addAttribute("count", count);

	}

	@RequestMapping("bbs/bbs_recommend_sort")
	public void recommend_sort(Model model) {
		try {
			List<BbsVO> list = dao.recommend_sort();
			model.addAttribute("list", list);
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	@RequestMapping("bbs/bbsList")
	public void list3(BbsPageVO vo, Model model) {
		System.out.println("page값>> " + vo);
		vo.setStartEnd(vo.getPage());
		System.out.println("start/end값>> " + vo);
		List<BbsVO> list = dao.list3(vo);
		model.addAttribute("list", list);
	}

	
	@RequestMapping("bbs/bbs_search_name")
	public void name(BbsVO vo, Model model) {
		try {
			List<BbsVO> list = dao.list(vo);
			model.addAttribute("list", list);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}


	@RequestMapping("bbs/bbs_search_title")
	public void title(BbsVO vo, Model model) {
		List<BbsVO> list = dao.list2(vo);
		model.addAttribute("list", list);

//		return "redirect:bbs_main.jsp";
	}

	
	@RequestMapping("bbs/bbs_insert")
	public String insert(BbsVO vo, HttpServletRequest request, 
			MultipartFile file, 
			Model model) {
		try {
			String savedName = file.getOriginalFilename();
			String uploadPath = request.getSession().getServletContext().getRealPath("resources/upload");
			File target = new File(uploadPath + "/" + savedName);
			System.out.println("업로드 경로는 " + uploadPath);
			System.out.println(uploadPath + "/" + savedName);
			if (file.isEmpty()) {
				savedName = "null_img.png";
			}
			if (!target.isDirectory()) {
				target.mkdir();
			}
			try {
				file.transferTo(target);
				System.out.println("파일 넣기 성공");
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addAttribute("savedName", savedName);
			System.out.println("img넣기 전>> " + vo);
			vo.setBbs_img(savedName);
			System.out.println("img넣은 후>> " + vo);
			dao.insert(vo);
			return "redirect:/bbs/bbs_main.jsp";
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/member/CdbLogin.jsp";
		}
	
}


	@RequestMapping("bbs/bbs_contents")
	private void one(int bbs_Id, ReplyVO vo2, RecommendVO vo3, Model model) {
		try {
			BbsVO vo = dao.one(bbs_Id);
			List<ReplyVO> list = dao2.all(vo2);
			int count = dao.recommend_count(vo3);
			model.addAttribute("vo", vo);
			model.addAttribute("list", list);
			model.addAttribute("count", count);
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	
	@RequestMapping("bbs/bbs_recommend")
	public String insert2(RecommendVO vo, Model model) {
		try {
			int list = dao.insert2(vo);
			int count = dao.recommend_count(vo);
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			return "redirect:/bbs/bbs_contents?bbs_Id="+vo.getBbs_Id();
		} catch (Exception e) {
			return "redirect:/member/CdbLogin.jsp";
		}
	}

	
	@RequestMapping("bbs/bbs_recommend_count")
	public void recommend_count(RecommendVO vo, Model model) {

		int count = dao.recommend_count(vo);
		model.addAttribute("count", count);

		// model.addAttribute("id", vo2.getBbs_Id());
	}

	
	@RequestMapping("bbs/bbsDel")
	public String delete(BbsVO vo, Model model) {
		try {
			int result = dao.del(vo);
			model.addAttribute("result", result);
			return "redirect:/bbs/bbs_main.jsp";
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/member/CdbLogin.jsp";
		}
	}
}
