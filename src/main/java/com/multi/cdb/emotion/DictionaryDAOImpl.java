package com.multi.cdb.emotion;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;




@Repository
public class DictionaryDAOImpl{

	@Autowired
	MongoTemplate mongoTemplate;
	
	@Autowired
	SqlSessionTemplate my;

	public DictionaryVO one(String word) {
		System.out.println(word);
		Query query = new Query(new Criteria("word").is(word));
		DictionaryVO vo =  mongoTemplate.findOne(query, DictionaryVO.class, "dictionary");
		System.out.println("dao    >> " + vo);
		return vo;
	}
	
	public void insert(ReviewVO vo) {
		//insert(데이터vo, 컬렉션명)
		//vo에 name변수, getName() --> memo컬렉션의 키name: 값getName()
		//Bson객체(JSON)로 만들어 넣습니다.!!
		mongoTemplate.insert(vo, "review");
	}
	
	public void jumsu_insert(EmotionVO vo) {
		my.insert("emotion.jumsu_insert", vo);
	}
	
	public void jumsu_update(EmotionVO vo) {
		my.insert("emotion.jumsu_update", vo);
	}
	
	public int jumsu_count(String title) {
		return my.selectOne("emotion.jumsu_count",title);
	}
	
	public int sel_jumsu(String yp_id) {
		Integer jum = my.selectOne("emotion.sel_jumsu", yp_id);
		if(jum == null) {
			jum = 0;
		}
		return jum;
		
	}
	

	public List<ReviewVO> list(String yp_id) {
		Query query = new Query(new Criteria("yp_title").is(yp_id));
		return mongoTemplate.find(query, ReviewVO.class, "review");
	}	

}