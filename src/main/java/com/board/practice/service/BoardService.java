package com.board.practice.service;

import java.util.List;

import com.board.practice.domain.BoardVO;

public interface BoardService {
	public int insertBoard(BoardVO board) throws Exception;
	public List<BoardVO> listBoard() throws Exception;
	public BoardVO selectBoard(int bno) throws Exception;
	public void deleteBoard(int bno) throws Exception;
	public int maxBno() throws Exception;
	public int minBno() throws Exception;
}
