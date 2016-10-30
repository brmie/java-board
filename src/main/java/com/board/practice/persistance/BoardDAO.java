package com.board.practice.persistance;

import java.util.List;

import com.board.practice.domain.BoardVO;

public interface BoardDAO {
	public int insertBoard(BoardVO board) throws Exception;
	public int maxBno() throws Exception;
	public int minBno() throws Exception;
	public List<BoardVO> listBoard() throws Exception;
	public BoardVO selectBoard(int bno) throws Exception;
	public void deleteBoard(int bno) throws Exception;
}
