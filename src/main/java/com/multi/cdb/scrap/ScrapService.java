package com.multi.cdb.scrap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ScrapService {

	@Autowired
	ScrapDAO dao;

	// 일자리 스크랩 리스트 불러오기
	public List<ScrapVO> scrap_joblist() {
		return dao.scrap_job();
	}
	// 스크랩 추가
	public void scrap(ScrapVO vo) {
		dao.scrap(vo);
	}
	// 스크랩 중복 방지 위해 개수 세기
	public int scrap_count(ScrapVO vo) {
		return dao.scrap_count(vo);
	}
	// 스크랩 취소 
	public void scrap_delete(ScrapVO vo) {
		dao.scrap_delete(vo);
	}
}
