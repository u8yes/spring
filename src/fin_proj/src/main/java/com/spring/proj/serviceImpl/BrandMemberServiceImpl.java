package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.BrandMemberDAOMybatis;
import com.spring.proj.domain.BrandMemberVO;
import com.spring.proj.domain.UserMemberVO;
import com.spring.proj.service.BrandMemberService;

@Service("brandMemeberService")
public class BrandMemberServiceImpl implements BrandMemberService {

	@Autowired
	private BrandMemberDAOMybatis dao;
	
	


	@Override
	public void insertService(BrandMemberVO vo) {
		dao.insertBrandMember(vo);
	}

	@Override
	public BrandMemberVO getService(String bm_no) {
		BrandMemberVO member = dao.getBrandMember(bm_no);
		return member;
	}

	@Override
	public List<BrandMemberVO> getServiceList(BrandMemberVO vo) {	
	 return dao.getBrandMemberList(vo);
		
	}

	@Override
	public void updateService(BrandMemberVO vo) {
		dao.updateBrandMember(vo);
		
	}

	@Override
	public void deleteService(String bm_no) {
		dao.deleteBrandMember(bm_no);
	}

	@Override
	public BrandMemberVO loginBrandService(BrandMemberVO vo) {
		return dao.loginBrandMember(vo);
		
	}

	
	
}
