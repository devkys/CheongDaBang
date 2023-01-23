package com.multi.cdb.yPolicy;

import org.springframework.stereotype.Service;

@Service //싱글톤
public class PageService {

	public int pages(int count) {
		int pages = 0;
		if(count % 28 == 0) {
			pages = count / 28; //120개 --> 4pages
		}else {
			pages = count / 28 + 1; //122개 --> 5pages 
		}
		return pages;
	}
	
}