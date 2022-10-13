package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.CommunityVO;

@Repository
public class CommuDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;

	// < MyBatis 적용 2번째 방법. >
	// CRUD 기능의 method(메서드) 구현
	
	// 글 등록(insert문)
	public void insertCommu(CommunityVO vo) {
		mybatis.insert("Commu.insertCommu", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 목록보기(select문)
	public CommunityVO getCommu(String cm_bdno) {
		mybatis.update("Commu.updateCnt", cm_bdno);
		return mybatis.selectOne("Commu.getCommu", cm_bdno);
	}
	
	public List<CommunityVO> getCommuList(CommunityVO vo) {
		
//		if(vo.getSearchCondition().equals("TITLE")) {
//			return mybatis.selectList("Ask.getAskList_T", vo);
//		} else if(vo.getSearchCondition().equals("CONTENT")) {
//			return mybatis.selectList("Ask.getAskList_C", vo);
//		} else {
//			return mybatis.selectList("Ask.getAskList_T", vo);
//		}
		
		return mybatis.selectList("Commu.getCommuList", vo);
		
	}
	
	// 글 수정(update문)
	public void updateCommu(CommunityVO vo) {
		mybatis.update("Commu.updateCommu", vo);
	}
	
	// 글 삭제(delete문)
	public void deleteCommu(String cm_bdno) {
		mybatis.delete("Commu.deleteCommu", cm_bdno);
	}
	
}
