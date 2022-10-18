package com.spring.proj.serviceImpl.md;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.md.MdDAOMybatis;
import com.spring.proj.domain.md.MdVO;
import com.spring.proj.service.md.MdService;

@Service("mdService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class MdServiceImpl implements MdService {
	
	@Autowired
	//private BrandDAO dao;
	private MdDAOMybatis dao;
		
	
	@Override
	public void insertService(MdVO md) {
		dao.insertMd(md);
		
	}

	@Override
	public MdVO getService(int md_no) {
		MdVO md = dao.getMd(md_no);
		
		return md;
	}

	@Override
	public List<MdVO> getServiceList(MdVO md) {
		return dao.getMdList(md);
	}

	@Override
	public void updateService(MdVO md) {
		dao.updateMd(md);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int md_no) {
		dao.deleteMd(md_no);
	}
	
}
