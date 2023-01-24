package com.multi.cdb.bbs;

import org.springframework.stereotype.Service;

@Service //싱글톤
public class BbsPageService {

	public int pages(int count) {
		int pages = 0;
		if(count % 10 == 0) {
			pages = count / 10; //120개 --> 12pages
		}else {
			pages = count / 10 + 1; //122개 --> 13pages 
		}
		return pages;
	}
	
}