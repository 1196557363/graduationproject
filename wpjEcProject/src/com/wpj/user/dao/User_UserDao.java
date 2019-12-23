package com.wpj.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wpj.user.entity.User_User;

@Repository
public interface User_UserDao {

	public User_User u_FindByUsername(@Param("account")String account, @Param("password")String password);

	public boolean selectAccountByAccount(String account);

	public int insertUser_User(@Param("entity")User_User u_user);

}
