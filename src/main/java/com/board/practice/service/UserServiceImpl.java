package com.board.practice.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.board.practice.persistance.UserDAO;

import com.board.practice.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserDAO dao;

	@Override
	public void insertUser(UserVO user) throws Exception {
		dao.insertUser(user);
	}

	@Override
	public UserVO selectUser(int uno) throws Exception {
		return dao.selectUser(uno);
	}

	@Override
	public List<UserVO> listUser() throws Exception {
		return dao.listUser();
	}

	@Override
	public void deleteUser(int uno) throws Exception {
		dao.deleteUser(uno);
	}

}
