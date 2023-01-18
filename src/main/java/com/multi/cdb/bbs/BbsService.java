package com.multi.cdb.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BbsService{
	@Autowired
	BbsDAO dao;
	
	//메인 게시물 노출
	public List<BbsVO> list() {
		return dao.list();
	}
	
	//메인 게시물 검색(내용, 제목)
	public List<BbsVO> list1(BbsVO vo) {
		return dao.list();
	}
	
}
