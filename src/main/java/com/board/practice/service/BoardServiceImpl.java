package com.board.practice.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.practice.domain.BoardVO;
import com.board.practice.persistance.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;

	@Override
	public int insertBoard(BoardVO board) throws Exception {
		dao.insertBoard(board);
		return dao.maxBno(); 
	}

	@Override
	public List<BoardVO> listBoard() throws Exception {
		return dao.listBoard();
	}

	@Override
	public BoardVO selectBoard(int bno) throws Exception {
		return dao.selectBoard(bno);
	}

	@Override
	public void deleteBoard(int bno) throws Exception {
		dao.deleteBoard(bno);
	}

	@Override
	public int maxBno() throws Exception {
		return dao.maxBno();
	}

	@Override
	public int minBno() throws Exception {
		return dao.minBno();
	}

}
