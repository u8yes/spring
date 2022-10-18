package com.spring.proj.serviceImpl.brand;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brand.BrandInfoDAOMybatis;
import com.spring.proj.dao.brand.BrandMemberDAOMybatis;
import com.spring.proj.domain.brand.BrandMemberVO;
import com.spring.proj.service.brand.BrandMemberService;

@Service("brandMemeberService")
public class BrandMemberServiceImpl implements BrandMemberService {

	@Autowired
	private BrandMemberDAOMybatis dao;
	
	@Override
	public int bidCheck(String bid) {
	

		int cnt = dao.bidCheck(bid);
		
		System.out.println("cnt: " + cnt);
		
		return cnt;
	}

	@Autowired
	private BrandInfoDAOMybatis idao;


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
