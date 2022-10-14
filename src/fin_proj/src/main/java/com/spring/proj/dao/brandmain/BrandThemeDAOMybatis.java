package com.spring.proj.dao.brandmain;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.brandmain.BrandThemeVO;

@Repository
public class BrandThemeDAOMybatis {
	
	@Autowired
	SqlSessionTemplate mybatis;
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBrandTheme(BrandThemeVO bt) {	// DTO(DO), 매개변수를 파라미터라고도 한다. 전달되어지는 타입 (BoardVO vo)
		
		mybatis.insert("BrandTheme.insertBrandTheme", bt);	// get메서드로 요청하면 마이바티스가 반환해준다.
		System.out.println("brandTheme insertDAO => "+ bt);
	}
	
	// 목록보기(select문)
	public BrandThemeVO getBrandTheme(int bm_no) {
		return mybatis.selectOne("BrandTheme.getBrandTheme", bm_no);
	}

	public List<BrandThemeVO> getBrandThemeList(BrandThemeVO bt) {
				
		/*
		 * if(vo.getSearchCondition().equals("TITLE")) { return
		 * mybatis.selectList("Board.getBoardList_T", vo); // TITLE이 맞으면 실행. 요구한 것을 vo에
		 * 담아서 SQL로 넘겨줌. selectList로 전부 리턴해줌. }else
		 * if(vo.getSearchCondition().equals("CONTENT")) { return
		 * mybatis.selectList("Board.getBoardList_C", vo); }else { return
		 * mybatis.selectList("Board.getBoardList_T", vo); }
		 */

		return mybatis.selectList("BrandTheme.getBrandThemeList", bt);
	}
	
	
	// 글 수정(update문)
	public void updateBrandTheme(BrandThemeVO bt) {	// DTO(DO)
		mybatis.update("BrandTheme.updateBrandTheme", bt);
		
	}
	
	// 글 삭제(delete문)
	public void deleteBrandTheme(int bm_no) {
		mybatis.delete("BrandTheme.deleteBrandTheme", bm_no);
		
	}
}
