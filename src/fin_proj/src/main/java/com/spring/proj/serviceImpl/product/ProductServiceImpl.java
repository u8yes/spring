package com.spring.proj.serviceImpl.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.product.ProductDAOMybatis;
import com.spring.proj.domain.product.ProductVO;
import com.spring.proj.service.product.ProductService;

@Service("ProductService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAOMybatis dao;
	
	@Override
	public void insertProductService(ProductVO vo) {
		System.out.println("impl" + vo);
		//log.printLog("= insertService() ="); // 공통 로직.
		//log.printLogging("= insertService() ="); // 공통 로직.
		
		/*
		if(vo.getSeq()==0) {
			throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
		}
		//*/
		
		dao.insertProduct(vo); // 핵심 로직.
	}

	@Override
	public ProductVO getProductService(String p_pno) {
		System.out.println(p_pno);
		ProductVO product = dao.getProduct(p_pno);
		return product;
	}

	@Override
	public List<ProductVO> getProductServiceList(ProductVO vo) {
		return dao.getProductList(vo);
	}

	@Override
	public void updateProductService(ProductVO vo) {
		dao.updateProduct(vo);
	}

	@Override
	public void deleteProductService(String p_pno) {
		dao.deleteProduct(p_pno);
	}

}
