package com.spring.proj.serviceImpl.divisioncode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.divisioncode.DivisionCodeDAOMybatis;
import com.spring.proj.domain.divisioncode.DivisionCodeVO;
import com.spring.proj.service.divisioncode.DivisionCodeService;

@Service("divisionCodeService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class DivisionCodeServiceImpl implements DivisionCodeService {
	
	@Autowired
	//private BrandDAO dao;
	private DivisionCodeDAOMybatis dao;
		
	
	@Override
	public void insertService(DivisionCodeVO dc) {
		dao.insertDivisionCode(dc);
		
	}

	@Override
	public DivisionCodeVO getService(int dc_pcno) {
		DivisionCodeVO divisionCode = dao.getDivisionCode(dc_pcno);
		
		return divisionCode;
	}

	@Override
	public List<DivisionCodeVO> getServiceList(DivisionCodeVO dc) {
		return dao.getDivisionCodeList(dc);
	}

	@Override
	public void updateService(DivisionCodeVO dc) {
		dao.updateDivisionCode(dc);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int dc_pcno) {
		dao.deleteDivisionCode(dc_pcno);
	}
	
}
