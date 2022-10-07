package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.CodeDAOMybatis;
import com.springproj.biz.domain.CodeVO;
import com.springproj.biz.service.CodeService;

@Service("codeService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	//private BrandDAO dao;
	private CodeDAOMybatis dao;
		
	
	@Override
	public void insertService(CodeVO co) {
		dao.insertCode(co);
		
	}

	@Override
	public CodeVO getService(String p_pno) {
		CodeVO code = dao.getCode(p_pno);
		
		return code;
	}

	@Override
	public List<CodeVO> getServiceList(CodeVO co) {
		return dao.getCodeList(co);
	}

	@Override
	public void updateService(CodeVO co) {
		dao.updateCode(co);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(String p_pno) {
		dao.deleteCode(p_pno);
	}
	
}
