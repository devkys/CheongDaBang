package com.multi.cdb.bbs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BbsDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public BbsVO createdId() {
		return my.selectOne("bbs.createdId");
	}
	
	public List<BbsVO> list(BbsVO vo) { //아이디 검색 > 삭제
		return my.selectList("bbs.listId", vo);
	}
	
	public List<BbsVO> list2(BbsVO vo) { 
		return my.selectList("bbs.listTitle", vo); //제목검색
	}

	public List<BbsVO> list3(BbsPageVO vo) {  //페이징 용 리스트
		return my.selectList("bbs.list3", vo);
	}
	
	
	
	public List<BbsVO> all() { 
		 return my.selectList("bbs.all"); } //전체 불러오기 리스트

	public List<BbsVO> recommend_sort() { //좋아요 순으로 정렬
		return my.selectList("bbs.recommend_sort"); }
	
	public int count() { //게시글 숫자
		return my.selectOne("bbs.count");
	}                                                               
	
	public BbsVO one(int bbs_Id) {
		return my.selectOne("bbs.one", bbs_Id);
	}          
	
	public int recommend_count(RecommendVO vo) { // 좋아요 수
		return my.selectOne("bbs.recommend_count", vo);
	}    
	public int insert(BbsVO vo) { // 글쓰기
		return my.insert("bbs.create", vo);
	}
	public int insert2(RecommendVO vo) { // 좋아요 누르기
		return my.insert("bbs.recommend_in", vo);
	}
	public int up(BbsVO vo) { //미구현
		return my.update("bbs.up", vo);
	}
	public int del(BbsVO vo) { // 미구현
		return my.delete("bbs.del", vo);
	}
}
