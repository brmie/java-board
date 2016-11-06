package com.board.practice.persistance;

import java.util.List;

import com.board.practice.domain.UserVO;

public interface UserDAO {
	public void insertUser(UserVO user) throws Exception;
	public UserVO selectUser(int uno) throws Exception;
	public List<UserVO> listUser() throws Exception;
	public void deleteUser(int uno) throws Exception;
}
