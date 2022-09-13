package com.springproj.biz.board.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springproj.biz.board.BoardVO;

@Repository("boardDAO")
public class BoardDAO {	// DAO(Data Access Object)
	
	
	private final String BOARD_INSERT 
	= "insert into board(seq, title, writer, content) values (" + "(select nvl(max(seq),0)+1 from board), ?, ?, ?)";	// nvl: Null값이면 0으로 실행해라
	
	private final String BOARD_UPDATE
	= "update board set title = ?, content = ? where seq = ?";
	
	private final String BOARD_DELETE
	= "delete from board where seq = ?";
	
	private final String BOARD_SELECT
	= "select * from board where seq = ?";
	
	private final String BOARD_LIST
	= "select * from board order by seq";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {	// DTO(DO)
		Object[] args = {vo.getTitle(), vo.getWriter(), vo.getContent()};
		
		jdbcTemplate.update(BOARD_INSERT, args);	// close까지 함께 같이 처리해줌.
		
		
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		Object[] args = {seq};
		
		return jdbcTemplate.queryForObject(BOARD_SELECT, args, new BoardRowMapper()); 	// 하나의 결과(행)만을 반환 받을 때
				
	}

	public List<BoardVO> getBoardList() {
		
		return jdbcTemplate.query(BOARD_LIST, new BoardRowMapper());
		
	}
	
	
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {	// DTO(DO)
		Object[] args = {vo.getTitle(), vo.getContent(), vo.getSeq()};

		jdbcTemplate.update(BOARD_UPDATE, args);
		
		
	}
	
	// 글 삭제(delete문)
	public void deleteBoard(int seq) {

		jdbcTemplate.update(BOARD_DELETE, seq);
	}
}
