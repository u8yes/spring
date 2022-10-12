package com.spring.proj.serviceImpl;
//서비스 기능수행
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.ProductDAOMybatis;
import com.spring.proj.domain.ProductVO;
import com.spring.proj.service.ProductService;

@Service("ProductService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	//private BoardDAO dao;
	private ProductDAOMybatis dao;
	
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	

	
	@Override
	public void insertService(ProductVO vo) {
		System.out.println("impl" + vo);
		//log.printLog("= insertService() ="); // 공통 로직.
		//log.printLogging("= insertService() ="); // 공통 로직.
		
		/*
		if(vo.getSeq()==0) {
			throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
		}
		//*/
		
		dao.insertProduct(vo); // 핵심 로직.
		//dao.insertBoard(vo);
		
	}

	@Override
	public ProductVO getService(String p_pno) {
		//log.printLog("= getService() =");
		System.out.println(p_pno);
		ProductVO product = dao.getBoard(p_pno);
		
		return product;
	}

	@Override
	public List<ProductVO> getServiceList(ProductVO vo) {
		//log.printLog("= getServiceList() =");
		return dao.getBoardList(vo);
	}

	@Override
	public void updateService(ProductVO vo) {
		//log.printLog("= updateService() =");
		dao.updateProduct(vo);
	}

	@Override
	public void deleteService(String p_pno) {
		//log.printLog("= deleteService() =");
		dao.deleteProduct(p_pno);
	}


	
}
