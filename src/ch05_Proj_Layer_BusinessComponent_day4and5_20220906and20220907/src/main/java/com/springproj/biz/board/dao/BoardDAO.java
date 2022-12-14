package com.springproj.biz.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.common.JDBCUtil;

public class BoardDAO {	// DAO(Data Access Object)
	
	
	private final String BOARD_INSERT 
	= "insert into board(seq, title, writer, content) values (" + "(select nvl(max(seq),0)+1 from board), ?, ?, ?)";	// nvl: Null값이면 0으로 실행해라
	
	private final String BOARD_UPDATE
	= "update board set title = ?, content = ? where seq = ?";
	
	Connection conn;
	
	
	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {	// DTO(DO)
		
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
	public void getBoard(int seq) {
		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
	}

	public void getBoardList() {
		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
	}
	
	
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {	// DTO(DO)

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
		conn = JDBCUtil.getConnection();	// JDBCUtil에서의 return 한 값을 그대로 받아줌.
	}
}
