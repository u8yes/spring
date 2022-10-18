package com.spring.proj.dao.membership;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.membership.MembershipVO;

@Repository
public class MembershipDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
		// CRUD 기능의 method 구현

		// C 글 등록(insert문)
		public void insertMembership(MembershipVO vo) {
			mybatis.insert("membership.insertMembership",vo); //Mapping에 드가는 이름들
		}
		
		// R 목록보기(select문)
		public MembershipVO getMembership(String ms_grade) {
			return mybatis.selectOne("membership.getMembership", ms_grade); //반환의 결과가 하나일때 selectOne 사용
		}
		
		public List<MembershipVO> getMembershipList(MembershipVO vo) {
			return mybatis.selectList("membership.getMembershipLsit", vo);
		}
		// U 글 수정(update문)
		public void updateMembership(MembershipVO vo) {
			
			mybatis.update("membership.updateMembership");
		}
		// D 글 삭제(delete문)
		public void deleteMembership(String ms_grade) {
			mybatis.delete("membership.deleteMembership");
		}
}
