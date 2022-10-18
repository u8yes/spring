package com.spring.proj.dao.buy;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.buy.BuyVO;




@Repository
public class BuyDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	
	
//	public BuyVO pointAp(BuyVO vo) {
//	
//		System.out.println(vo);
//		
//		vo.setCp_cpno(0);
//	vo.setD_dno(     Integer.parseInt(String.valueOf(mybatis.selectOne("Buy.getdelivery1", vo)))  );
//		vo.setO_odno(0);
//		vo.setO_pquantity(0);
//		vo.setP_name(null);
//		vo.setP_price(mybatis.selectOne("Buy.getpoint1", vo));
//		vo.setPa_no(mybatis.selectOne("Buy.getpoint1", vo));
//		vo.setPa_point(mybatis.selectOne("Buy.getpoint1", vo));
//		vo.setPo_number(null);
//		vo.setUm_addr(null);
//		vo.setUm_ars(null);
//		vo.setUm_email(null);
//		
//		return vo;
//	}
	
	public void insertBuy(BuyVO vo) {
		
		mybatis.insert("Buy.insertBuy", vo);  // 마이바티스와 맵퍼를 연동 하는 메서드 
	}
	public BuyVO getBuy(int pa_no) {
		System.out.println("BuyMybatis==>" +pa_no);
		return mybatis.selectOne("Buy.getcoupon1", pa_no);  // 마이바티스와 맵퍼를 연동 하는 메서드 
	}

//	public BuyVO getBuy(int po_no) {
//		System.out.println(po_no);
//		return mybatis.selectOne("Buy.getBuy", po_no); //  반환하는게 한개일때 selectOne 
//		}
	
	public List<BuyVO> getBuyList(BuyVO vo) {
				
	
	  return mybatis.selectList("Buy.getBuyList", vo);
	  
	  }

	public void updateBuy(BuyVO vo) {
		mybatis.update("Buy.updateBuy", vo);
	}


	public void deleteBuy(int po_no) {
		mybatis.delete("Buy.deleteBuy", po_no);
		
	}


	
}
