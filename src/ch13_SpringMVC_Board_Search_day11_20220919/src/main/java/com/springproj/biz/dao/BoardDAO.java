package com.springproj.biz.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAO {	// DAO(Data Access Object)
	
	private final String BOARD_INSERT 
	= "insert into board(seq, title, writer, content) values (" 
			+ "(select nvl(max(seq),0)+1 from board), ?, ?, ?)";	// nvl: Null값이면 0으로 실행해라
			
	private final String BOARD_UPDATE
	= "update board set title = ?, content = ? where seq = ?";
	
	private final String BOARD_DELETE
	= "delete from board where seq = ?";
	
	private final String BOARD_SELECT
	= "select * from board where seq = ?";
	
	private final String BOARD_LIST
	= "select * from BOARD order by seq desc";
	
	// 검색 기능 추가
	private final String BOARD_LIST_T
	= "select * from BOARD where title like '%'||?||'%' order by seq desc";	
	// || 연산자는 합치는(+) 연산자같은 역할을 한다. // % 무슨 문자이던 상관없다. 없어도 됨.
	
	private final String BOARD_LIST_C
	= "select * from BOARD where content like '%'||?||'%' order by seq desc";	// 

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {	// DTO(DO)
		Object[] args = {vo.getTitle(), vo.getWriter(), vo.getContent()};
		//Object[] args = {vo.getSeq(), vo.getTitle(), vo.getWriter(), vo.getContent()};

		jdbcTemplate.update(BOARD_INSERT, args);	// close까지 함께 같이 처리해줌.
		
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		Object[] args = {seq};
		
		return jdbcTemplate.queryForObject(BOARD_SELECT, args, new BoardRowMapper()); 	// 하나의 결과(행)만을 반환 받을 때
				
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		
		//return jdbcTemplate.query(BOARD_LIST, new BoardRowMapper());
		Object[] args = {vo.getSearchKeyword()};
		
		if(vo.getSearchCondition().equals("TITLE")) {
			return jdbcTemplate.query(BOARD_LIST_T, args, new BoardRowMapper());
		}else if(vo.getSearchCondition().equals("CONTENT")){
			return jdbcTemplate.query(BOARD_LIST_C, args, new BoardRowMapper());
		}
		
		return null;
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
	
	class BoardRowMapper implements RowMapper<BoardVO>{
		
		@Override
		public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {	// select문 처리에는 필수 메서드
			BoardVO board = new BoardVO();
			
			board.setSeq(rs.getInt("seq"));
			board.setTitle(rs.getString("title"));
			board.setWriter(rs.getString("writer"));
			board.setContent(rs.getString("content"));
			board.setRegdate(rs.getDate("regdate"));
			board.setCnt(rs.getInt("cnt"));
			
			return board;
		}
		
	}

}
