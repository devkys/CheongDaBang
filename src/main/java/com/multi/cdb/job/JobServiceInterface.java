package com.multi.cdb.job;

import java.util.List;

import org.springframework.ui.Model;

public interface JobServiceInterface {

	public void insert(JobVO vo);
	public void getApiDataYouth(YouthJobVO vo);

	public void update(JobVO vo);
	
	public List<JobVO> one(String job_wantedAuthNo);
	public List<YouthJobVO> details(String job_wantedAuthNo);
	
	//������ ���� ��ü����Ʈ
	
	/*
	 * public List<JobVO> getAllList(); public List<YouthJobVO>
	 * getAllYouthJobList();
	 */

	public List<JobVO> getJobByCri(Criteria cri);
	public List<YouthJobVO> getYouthJobByCri(Criteria cri);

	public int getCountJobByCri(Criteria cri);
	public int getCountYouthJobByCri(Criteria cri);
}
