package com.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crud.bean.BoardVO;
import com.crud.common.JDBCUtil;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String BOARD_INSERT = "insert into BOOK (title, author, publish, com) values (?,?,?,?)";
	private final String BOARD_UPDATE = "update BOOK set title=?, author=?, publish=? ,com=? where id=?";
	private final String BOARD_DELETE = "delete from BOOK  where id=?";
	private final String BOARD_GET = "select * from BOOK  where id=?";
	private final String BOARD_LIST = "select * from BOOK order by id desc";

	public int insertBoard(BoardVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getAuthor());
			stmt.setString(3, vo.getPublish());
			stmt.setString(4, vo.getCom());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getId());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getAuthor());
			stmt.setString(3, vo.getPublish());
			stmt.setString(4, vo.getCom());
			stmt.setInt(5, vo.getId());
			
			
			System.out.println(vo.getTitle() + "-" + vo.getAuthor() + "-" + vo.getPublish() + "-" + vo.getCom()+ "-" + vo.getId());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public BoardVO getBoard(int seq) {
		BoardVO one = new BoardVO();
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setId(rs.getInt("id"));
				one.setTitle(rs.getString("title"));
				one.setAuthor(rs.getString("author"));
				one.setPublish(rs.getString("publish"));
				one.setCom(rs.getString("com"));
				
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = new ArrayList<BoardVO>();
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				BoardVO one = new BoardVO();
				one.setId(rs.getInt("id"));
				one.setTitle(rs.getString("title"));
				one.setAuthor(rs.getString("author"));
				one.setPublish(rs.getString("publish"));
				one.setCom(rs.getString("com"));

				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
}
