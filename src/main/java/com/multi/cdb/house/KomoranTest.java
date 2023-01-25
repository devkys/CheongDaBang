package com.multi.cdb.house;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;

public class KomoranTest {
	public static void main(String[] args) {
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		String document = "너무 이쁜 우리 아기들";
		
		KomoranResult result = komoran.analyze(document);
		System.out.println(result.getPlainText());
	}
}
