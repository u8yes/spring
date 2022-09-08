package com.springproj.biz.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.common.JDBCUtil;
import com.springproj.biz.common.LogAdvice;

@Repository("boardDAO")
public class BoardDAO {	// DAO(Data Access Object)
	
	
	private final String BOARD_INSERT 
	= "insert into board(seq, title, writer, content) values (" + "(select nvl(max(seq),0)+1 from board), ?, ?, ?)";	// nvl: Null값이면 0으로 실행해라
	
	private final String BOARD_UPDATE
	= "update board set title = ?, content = ? where seq = ?";
	
	private final String BOARD_SELECT
	= "select * from board where seq = ?";
	
	Connection conn;
	
	@Autowired
	private LogAdvice log;
	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {	// DTO(DO)
		//log.printLog("== insertBoardDAO() ==");
		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
		
		PreparedStatement pstmt = null;	// 지역변수라서 null로 선언해야하는데 안 하면 쓰레기가 쌓이게 됨.

		// 1. 연결 JDBCUtil.class로 넘김
		
		// 2. jdbc를 이용해서 SQL 처리.
		try {
			pstmt = conn.prepareStatement(BOARD_INSERT);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getContent());
			int result = pstmt.executeUpdate();	 
			
			if(result == 1) {
				System.out.println("===> 데이터 저장 성공했습니다^^;");
			}else {
				System.out.println("===> 데이터 저장 실패했습니다ㅜ");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn);
			
		}
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		//log.printLog("== getBoardDAO() ==");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
		
		try {
			pstmt = conn.prepareStatement(BOARD_SELECT);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
			
			BoardVO board = new BoardVO();
			
			board.setSeq(rs.getInt("seq"));
			board.setTitle(rs.getString("title"));
			board.setWriter(rs.getString("writer"));
			board.setContent(rs.getString("content"));
			board.setRegdate(rs.getDate("regdate"));
			board.setCnt(rs.getInt("cnt"));
			
			return board;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn, rs);
		}
		
		return null;
	}

	public void getBoardList() {
		//log.printLog("== getBoardListDAO() ==");

		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
	}
	
	
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {	// DTO(DO)
		//log.printLog("== updateBoardDAO() ==");

		PreparedStatement pstmt = null;	// 지역변수라서 null로 선언해야하는데 안 하면 쓰레기가 쌓이게 됨.
		
		
		// 1. 연결
		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.

		
		
		// 2. jdbc를 이용해서 SQL 처리.
		try {
			pstmt = conn.prepareStatement(BOARD_UPDATE);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getSeq());
			int result = pstmt.executeUpdate();
			
			if(result == 1) {
				System.out.println("===> 데이터 수정 성공했습니다^^;");
			}else {
				System.out.println("===> 데이터 수정 실패했습니다ㅜ");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn);
			
		}
	}
	
	// 글 삭제(delete문)
	public void deleteBoard(int seq) {
		//log.printLog("== deleteBoardDAO() ==");

		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
	}
}
