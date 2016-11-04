package com.board.practice.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.board.practice.domain.BoardVO;
import com.board.practice.service.BoardService;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value="/list")
	public String list(Model model) throws Exception{
		List<BoardVO> list = new ArrayList<BoardVO>();
		list = service.listBoard();
		model.addAttribute("boards", list);
		return "list";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String writeGet() throws Exception{
		return "insertForm";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String writePost(BoardVO board) throws Exception{
		int num = service.insertBoard(board);
		return "redirect:/board/view/" + num;
	}
	
	@RequestMapping(value="/view/{bno}")
	public String view(@PathVariable("bno") int bno, Model model) throws Exception {
		model.addAttribute("board", service.selectBoard(bno));
		model.addAttribute("minBno", service.minBno());
		model.addAttribute("maxBno", service.maxBno());
		return "view";
	}
	
	@RequestMapping(value="/delete/{bno}")
	public String delete(@PathVariable("bno") int bno) throws Exception {
		service.deleteBoard(bno);
		return "redirect:/board/list";
	}
}
