package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BrandInfoVO;
import com.springproj.biz.domain.BrandVO;

@Repository
public class BrandInfoDAOMybatis {
	
	@Autowired
	SqlSessionTemplate mybatis;
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBrandInfo(BrandInfoVO bi) {	// DTO(DO), 매개변수를 파라미터라고도 한다. 전달되어지는 타입 (BoardVO vo)
		
		mybatis.insert("BrandInfo.insertBrandInfo", bi);	// get메서드로 요청하면 마이바티스가 반환해준다.
	}
	
	// 목록보기(select문)
	public BrandInfoVO getBrandInfo(int bm_no) {
		return mybatis.selectOne("BrandInfo.getBrandInfo", bm_no);
	}

	public List<BrandInfoVO> getBrandInfoList(BrandInfoVO bi) {
				
		/*
		 * if(vo.getSearchCondition().equals("TITLE")) { return
		 * mybatis.selectList("Board.getBoardList_T", vo); // TITLE이 맞으면 실행. 요구한 것을 vo에
		 * 담아서 SQL로 넘겨줌. selectList로 전부 리턴해줌. }else
		 * if(vo.getSearchCondition().equals("CONTENT")) { return
		 * mybatis.selectList("Board.getBoardList_C", vo); }else { return
		 * mybatis.selectList("Board.getBoardList_T", vo); }
		 */

		return mybatis.selectList("BrandInfo.getBrandInfoList", bi);
	}
	
	
	// 글 수정(update문)
	public void updateBrandInfo(BrandInfoVO bi) {	// DTO(DO)
		mybatis.update("BrandInfo.updateBrandInfo", bi);
		
	}
	
	// 글 삭제(delete문)
	public void deleteBrandInfo(int bm_no) {
		mybatis.delete("BrandInfo.deleteBrandInfo", bm_no);
		
	}
}
