package com.wpj.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.wpj.entity.User;
import com.wpj.user.entity.User_User;

@Service
public interface User_UserService {
	
	public User_User u_FindByUsername(String account,String password);

	public boolean selectAccountByAccount(String account);

	public int insertUser_User(User_User u_user);

}
