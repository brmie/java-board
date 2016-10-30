package com.board.practice.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.practice.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession session;
	public static String namespace = "com.board.practice.mapper.boardMapper";

	@Override
	public int insertBoard(BoardVO board) throws Exception {
		int num =0;
		try {
			session.insert(namespace + ".insertBoard", board);
			num =1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}

	@Override
	public List<BoardVO> listBoard() throws Exception {
		return session.selectList(namespace + ".listBoard");
	}

	@Override
	public BoardVO selectBoard(int bno) throws Exception {
		return session.selectOne(namespace + ".selectBoard", bno);
	}

	@Override
	public int maxBno() throws Exception {
		return session.selectOne(namespace + ".maxBno");
	}
	
	@Override
	public int minBno() throws Exception {
		return session.selectOne(namespace + ".minBno");
	}

	@Override
	public void deleteBoard(int bno) throws Exception {
		session.delete(namespace + ".deleteBoard", bno);
	}
	
}
