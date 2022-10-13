package com.springproj.biz.serviceImpl;
//서비스 기능수행
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.ProductDAOMybatis;
import com.springproj.biz.domain.ProductVO;
import com.springproj.biz.service.ProductService;

@Service("ProductService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	//private BoardDAO dao;
	private ProductDAOMybatis dao;
	
	
	@Override
	public void insertService(ProductVO vo) {
		System.out.println("impl" + vo);
		
		
		dao.insertProduct(vo); // 핵심 로직.
		
	}

	@Override
	public ProductVO getService(int p_pno) {
		//log.printLog("= getService() =");
		System.out.println(p_pno);
		ProductVO product = dao.getProduct(p_pno);
		
		return product;
	}

	@Override
	public List<ProductVO> getServiceList(ProductVO vo) {
		//log.printLog("= getServiceList() =");
		return dao.getProductList(vo);
	}

	@Override
	public void updateService(ProductVO vo) {
		//log.printLog("= updateService() =");
		dao.updateProduct(vo);
	}

	@Override
	public void deleteService(int p_pno) {
		//log.printLog("= deleteService() =");
		dao.deleteProduct(p_pno);
	}

}
