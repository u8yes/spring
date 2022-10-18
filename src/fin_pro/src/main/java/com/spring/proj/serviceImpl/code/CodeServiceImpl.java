package com.spring.proj.serviceImpl.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.code.CodeDAOMybatis;
import com.spring.proj.domain.code.CodeVO;
import com.spring.proj.service.code.CodeService;

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
	public CodeVO getService(int p_pno) {
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
	public void deleteService(int p_pno) {
		dao.deleteCode(p_pno);
	}
	
}
