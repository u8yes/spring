package com.springproj.biz.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BrandVO;

@Repository("brandDAO")
public class BrandDAO extends SqlSessionDaoSupport{	// DAO(Data Access Object) 마이바티스에게 전달해줌.
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {	// 부모에게 객체를 전달받음
		super.setSqlSessionFactory(sqlSessionFactory);	// 다시 부모에게 변수를 보냄.
	}
	
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBrand(BrandVO vo) {	// DTO(DO), 매개변수를 파라미터라고도 한다. 전달되어지는 타입 (BoardVO vo)
		
		getSqlSession().insert("Brand.insertBrand", vo);	// get메서드로 요청하면 마이바티스가 반환해준다.
	}
	
	// 목록보기(select문)
	public BrandVO getBoard(int seq) {
		return getSqlSession().selectOne("Brand.getBrand", seq);
	}

	public List<BrandVO> getBrandList(BrandVO vo) {
		//System.out.println("DAO getBoardList");
		
		/*
		 * if(vo.getSearchCondition().equals("TITLE")) { return
		 * getSqlSession().selectList("Board.getBoardList_T", vo); // TITLE이 맞으면 실행. 요구한
		 * 것을 vo에 담아서 SQL로 넘겨줌. selectList로 전부 리턴해줌. }else
		 * if(vo.getSearchCondition().equals("CONTENT")) { return
		 * getSqlSession().selectList("Board.getBoardList_C", vo); }else { return
		 * getSqlSession().selectList("Board.getBoardList_T", vo); }
		 */
		
		return getSqlSession().selectList("Brand.getBrandList", vo);
	}
	
	
	// 글 수정(update문)
	public void updateBrand(BrandVO vo) {	// DTO(DO)
		getSqlSession().update("Brand.updateBrand", vo);
		
		
	}
	
	// 글 삭제(delete문)
	public void deleteBrand(int seq) {
		getSqlSession().delete("Brand.deleteBrand", seq);
		
	}
	
	

}
