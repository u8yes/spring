package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BrandVO;

@Repository
public class BrandDAOMybatis {
	
	@Autowired
	SqlSessionTemplate mybatis;
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBrand(BrandVO vo) {	// DTO(DO), 매개변수를 파라미터라고도 한다. 전달되어지는 타입 (BoardVO vo)
		
		mybatis.insert("Brand.insertBrand", vo);	// get메서드로 요청하면 마이바티스가 반환해준다.
	}
	
	// 목록보기(select문)
	public BrandVO getBrand(int b_no) {
		return mybatis.selectOne("Brand.getBrand", b_no);
	}

	public List<BrandVO> getBrandList(BrandVO vo) {
				
		/*
		 * if(vo.getSearchCondition().equals("TITLE")) { return
		 * mybatis.selectList("Board.getBoardList_T", vo); // TITLE이 맞으면 실행. 요구한 것을 vo에
		 * 담아서 SQL로 넘겨줌. selectList로 전부 리턴해줌. }else
		 * if(vo.getSearchCondition().equals("CONTENT")) { return
		 * mybatis.selectList("Board.getBoardList_C", vo); }else { return
		 * mybatis.selectList("Board.getBoardList_T", vo); }
		 */

		return mybatis.selectList("Brand.getBrandList", vo);
	}
	
	
	// 글 수정(update문)
	public void updateBrand(BrandVO vo) {	// DTO(DO)
		mybatis.update("Brand.updateBrand", vo);
		
	}
	
	// 글 삭제(delete문)
	public void deleteBrand(int b_no) {
		mybatis.delete("Brand.deleteBrand", b_no);
		
	}
}
