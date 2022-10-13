package com.spring.proj.dao.brand.comu;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.comu.ReplyVO;

@Repository
public class ReplyDAOMybatis {
	
	   @Autowired
	   SqlSessionTemplate mybatis;
	   
	   public void insertReply(ReplyVO vo) {
		   
		      mybatis.insert("Reply.insertReply", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
		   }
	
	   
	   public List<ReplyVO> getReplyList(ReplyVO vo) {

		  			
			return mybatis.selectList("Reply.getReplyList", vo);
			
		}
	   
	   //수정을 빙자한 삭제
	   public void deleteReply(ReplyVO vo) {
			mybatis.update("Reply.deleteReply", vo);
		}

}
