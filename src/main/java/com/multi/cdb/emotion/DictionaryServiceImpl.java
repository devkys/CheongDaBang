package com.multi.cdb.emotion;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;

@Service
public class DictionaryServiceImpl {

	@Autowired
	DictionaryDAOImpl dictionaryDAO;

	public int emotion(ReviewVO vo) {

		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);

		KomoranResult komoranResult = komoran.analyze(vo.getReply()); // 단어 분석 결과
		List<String> nounList = komoranResult.getNouns(); // 명사 목록만 추출

		System.out.println();

		// stopWords만들기
		HashSet<String> stopWords = new HashSet<>();

		try {
			BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream("data/stop.txt")));
			String line = null;
			// System.out.println(buffer.readLine());
			while ((line = buffer.readLine()) != null) {
				if (line.trim().length() > 0) {
					stopWords.add(line.trim());
				}
			}
		} catch (Exception e) {
		}

		System.out.println(stopWords); // stopWords프린트
		System.out.println(stopWords.size());

		// 금칙어 제외처리
		List<String> nounList2 = new ArrayList<String>();
		for (String s : nounList) {
			if (stopWords.contains(s)) {
				continue;
			}
			nounList2.add(s);
		}
		// 금칙어 제외된 명사목록
		System.out.println(nounList2);

		int sum = 0;
		for (String word : nounList2) {

			DictionaryVO d_vo = dictionaryDAO.one(word);
			System.out.println("-----------------" + vo);
			if (d_vo != null) {
				sum += d_vo.getJumsu();
			}
		}

		EmotionVO e_vo = new EmotionVO();
		e_vo.setYp_numfk(vo.getYp_title());
		e_vo.setTotal_sum(sum);

		if (dictionaryDAO.jumsu_count(vo.getYp_title()) == 0) {
			dictionaryDAO.jumsu_insert(e_vo);
			System.out.println("없음");
		} else if (dictionaryDAO.jumsu_count(vo.getYp_title()) == 1) {
			dictionaryDAO.jumsu_update(e_vo);
			System.out.println("있음");
		}
		int tt = dictionaryDAO.jumsu_count(vo.getYp_title());
		System.out.println(vo.getYp_title());
		return sum;

	}

	public void insert(ReviewVO vo) {
		dictionaryDAO.insert(vo);
	}

	public List<ReviewVO> list(String yp_id) {
		return dictionaryDAO.list(yp_id);
	}

	public int sel_jumsu(String yp_id) {
		return dictionaryDAO.sel_jumsu(yp_id);
	}
}