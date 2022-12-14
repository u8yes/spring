package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BasketVO;
import com.springproj.biz.domain.CodeVO;


@Repository
public class BasketDAOMybatis {
	
	
	
	
	@Autowired
	SqlSessionTemplate mybatis;
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBasket(BasketVO ba) {	// DTO(DO), 매개변수를 파라미터라고도 한다. 전달되어지는 타입 (BoardVO vo)
		
		mybatis.insert("Basket.insertBasket", ba);	// get메서드로 요청하면 마이바티스가 반환해준다.
	}
	
	// 목록보기(select문)
	public BasketVO getBasket(int s_no) {
		return mybatis.selectOne("Basket.getBasket", s_no);
	}

	public List<BasketVO> getBasketList(BasketVO ba) {
				
		/*
		 * if(vo.getSearchCondition().equals("TITLE")) { return
		 * mybatis.selectList("Board.getBoardList_T", vo); // TITLE이 맞으면 실행. 요구한 것을 vo에
		 * 담아서 SQL로 넘겨줌. selectList로 전부 리턴해줌. }else
		 * if(vo.getSearchCondition().equals("CONTENT")) { return
		 * mybatis.selectList("Board.getBoardList_C", vo); }else { return
		 * mybatis.selectList("Board.getBoardList_T", vo); }
		 */

		return mybatis.selectList("Basket.getBasketList", ba);
	}
	
	
	// 글 수정(update문)
	public void updateBasket(BasketVO ba) {	// DTO(DO)
		mybatis.update("Basket.updateBasket", ba);
		System.out.println("updateBasket DAOMyBatis =>"+ba);

	}
	
	// 글 삭제(delete문)
	public void deleteBasket(int s_no) {
		mybatis.delete("Basket.deleteBasket", s_no);
		
	}
}
