package com.wpj.user.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.entity.User;
import com.wpj.user.dao.User_UserDao;
import com.wpj.user.entity.User_User;
import com.wpj.user.service.User_UserService;

@Service
public class User_UserServiceImpl implements User_UserService{

	@Autowired
	private User_UserDao user_UserDao;
	
	@Override
	public User_User u_FindByUsername(String account, String password) {
		return user_UserDao.u_FindByUsername(account,password);
	}

	@Override
	public boolean selectAccountByAccount(String account) {
		return user_UserDao.selectAccountByAccount(account);
	}

	@Override
	public int insertUser_User(User_User u_user) {
		return user_UserDao.insertUser_User(u_user);
	}


	
	
}
