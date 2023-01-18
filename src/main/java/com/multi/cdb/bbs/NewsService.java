package com.multi.cdb.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService {
	@Autowired
	NewsDAO dao;
	
	//뉴스 메인 노출
	public List<NewsVO> list() {
		return dao.list();
	}
	
	//뉴스 검색
	public List<NewsVO> list2() {
		return dao.list();
	}
}
