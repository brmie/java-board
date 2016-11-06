package com.board.practice.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

import com.board.practice.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession session;
	public static String namespace = "com.board.practice.mapper.userMapper";

	@Override
	public void insertUser(UserVO user) throws Exception {
		session.insert(namespace + ".insertUser", user);
	}

	@Override
	public UserVO selectUser(int uno) throws Exception {
		return session.selectOne(namespace + ".selectUser", uno);
	}

	@Override
	public List<UserVO> listUser() throws Exception {
		return session.selectList(namespace + ".listUser");
	}

	@Override
	public void deleteUser(int uno) throws Exception {
		session.delete(namespace + ".deleteUser", uno);
	}

}
