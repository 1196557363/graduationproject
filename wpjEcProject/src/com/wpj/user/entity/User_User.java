package com.wpj.user.entity;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class User_User {
	private Integer id;
	private String nick;
	private String account;
	private String password;
	private String sex;
	private String phone;
	private Date createTime;
	private Date lastUpdateTime;
}
