package com.multi.cdb.yPolicy;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class YPolicyServiceImpl implements YPolicyServiceInterface {

	@Autowired
	YPolicyDAOImpl dao;

	@Override
	public void insert(YPolicyVO vo) {
		dao.insert(vo);
	}

	@Override
	public List<YPolicyVO> search(YPolicyVO vo) {
		System.out.println(vo);
		return dao.search(vo);
	}

	@Override
	public List<YPolicyVO> YpList(CriteriaYP cri) {
		int startRow = (cri.getPageNum() - 1) * cri.getAmount();
		cri.setStartRow(startRow);
		
		return dao.YpList(cri);
	}
	
	@Override
	public List<YPolicyVO> all(){
		return dao.all();
	}

	@Override
	public List<YPolicyVO> selectOne(String YP_CATEGORY) {
		return dao.selectOne(YP_CATEGORY);
	}

	@Override
	public List<YPolicyVO> detailOne(String YP_NAME) {
		return dao.detailOne(YP_NAME);
	}

	@Override
	public void viewCount(YPolicyVO vo) {
		dao.viewCount(vo);
	}

	@Override
	public int count() {
		return dao.count();
	}
	
	@Override
	public List<YPolicyVO> ypRecommend(YPolicyVO vo){
		return dao.ypRecommend(vo);
	}
	
	@Override
	public List<YPolicyVO> selectId(String YP_ID) {
		return dao.selectId(YP_ID);
	}
}