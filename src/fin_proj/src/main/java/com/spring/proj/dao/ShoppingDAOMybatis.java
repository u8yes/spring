package com.spring.proj.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.ShoppingVO;



@Repository
public class ShoppingDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;

	// < MyBatis 적용 2번째 방법. >
	// CRUD 기능의 method(메서드) 구현
	
	// 글 등록(insert문)
	public void insertShopping(ShoppingVO vo) {
		System.out.println("dao" + vo);
		mybatis.insert("Shopping.insertShopping", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 목록보기(select문) //상세보기
	public ShoppingVO getBoard2(String s_no) {
		return mybatis.selectOne("Shopping.getBoard2", s_no);
	}				 //Mapping의("namespace값.아이디값") 
	//리스트보기
	public List<ShoppingVO> getBoardList2(ShoppingVO vo) {
	return mybatis.selectList("Shopping.getBoardList2", vo);
		
	}
	
	// 글 수정(update문)
	public void updateShopping(ShoppingVO vo) {
		mybatis.update("Shopping.updateBoard", vo);
	}
	
	// 글 삭제(delete문)
	public void deleteShopping(String s_no) {
		mybatis.delete("Shopping.deleteBoard", s_no);
	}

	
	
}
