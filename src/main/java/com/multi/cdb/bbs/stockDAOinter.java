package com.multi.cdb.bbs;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

public interface stockDAOinter {

	void all(BbsPageVO vo, Model model);

	void name(BbsVO vo, Model model);

	void title(BbsVO vo, Model model);

	String insert(BbsVO vo, Model model);

	String insert2(RecommendVO vo, Model model);

	void recommend_count(RecommendVO vo, Model model);

	void delete(BbsVO vo, Model model);

	String insert(BbsVO vo, HttpServletRequest request, MultipartFile file, Model model);

	

}