package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.ProductbuyVO;

public interface ProductbuyService {

	public void insertService(ProductbuyVO vo);

	public ProductbuyVO getService(int o_odno);
	
	public List<ProductbuyVO> getServiceList(ProductbuyVO vo);

	public void updateService(ProductbuyVO vo);

	 public void deleteService(int o_odno);
}