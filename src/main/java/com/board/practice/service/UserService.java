package com.board.practice.service;

import java.util.List;

import com.board.practice.domain.UserVO;

public interface UserService {
	public void insertUser(UserVO user) throws Exception;
	public UserVO selectUser(int uno) throws Exception;
	public List<UserVO> listUser() throws Exception;
	public void deleteUser(int uno) throws Exception;
}
