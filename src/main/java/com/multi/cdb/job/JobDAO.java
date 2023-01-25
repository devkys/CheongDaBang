package com.multi.cdb.job;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component
public class JobDAO implements JobDAOInterface{

	@Autowired
	SqlSessionTemplate my;
	
	@Override
	public void insert(JobVO vo) {
		my.insert("job.insert", vo);
	}	
	@Override	
	public void getApiDataYouth(YouthJobVO vo) {
		my.insert("job.getApiDataYouth", vo);
		
	}

	@Override
	public void update(JobVO vo) {

	}
	
	@Override
	public List<JobVO> one(String job_wantedAuthNo) {
		return my.selectList("job.one", job_wantedAuthNo); 
	}
	@Override
	public List<YouthJobVO> details(String job_wantedAuthNo) {
		return my.selectList("job.details", job_wantedAuthNo); 
	}

	/*
	 * @Override public List<JobVO> all() { return my.selectList("job.all"); }
	 * 
	 * @Override public List<YouthJobVO> all() { return my.selectList("job.all"); }
	 */
	
	@Override	//페이징
	public List<JobVO> getJobByCri(Criteria cri) {
		return my.selectList("job.getJobByCri", cri);
	}
	@Override	//페이징
	public List<YouthJobVO> getYouthJobByCri(Criteria cri) {
		return my.selectList("job.getYouthJobByCri", cri);
	}

	@Override
	public int getCountJobByCri(Criteria cri) {
		return my.selectOne("job.getCountJobByCri",cri);
	}
	@Override
	public int getCountYouthJobByCri(Criteria cri) {
		return my.selectOne("job.getCountYouthJobByCri",cri);
	}


}
