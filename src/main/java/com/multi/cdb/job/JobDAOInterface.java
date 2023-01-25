package com.multi.cdb.job;

import java.util.List;

public interface JobDAOInterface {
	// ����
		void insert(JobVO vo);
		void getApiDataYouth(YouthJobVO vo);

		// ����
		void update(JobVO vo);

		// �󼼰˻�
		List<JobVO> one(String job_wantedAuthNo);
		List<YouthJobVO> details(String job_wantedAuthNo);

		//������ ���� ��ü ����Ʈ

		List<JobVO> getJobByCri(Criteria cri);
		List<YouthJobVO> getYouthJobByCri(Criteria cri);
		
		int getCountJobByCri(Criteria cri);
		int getCountYouthJobByCri(Criteria cri);

		
}
