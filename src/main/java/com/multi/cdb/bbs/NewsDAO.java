package com.multi.cdb.bbs;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NewsDAO {

	@Autowired
	SqlSessionTemplate my;

	public int insert(NewsVO vo) {
		return my.insert("news.r_create", vo);
	}
}
