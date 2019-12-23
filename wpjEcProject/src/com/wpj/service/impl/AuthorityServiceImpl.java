package com.wpj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.dao.AuthorityDao;
import com.wpj.entity.Authority;
import com.wpj.service.AuthorityService;

@Service
public class AuthorityServiceImpl implements AuthorityService {

	@Autowired
	private AuthorityDao authorityDao;
	
	@Override
	public int add(Authority authority) {
		return authorityDao.add(authority);
	}

	@Override
	public int deleteByRoleId(Long roleId) {
		return authorityDao.deleteByRoleId(roleId);
	}

	@Override
	public List<Authority> findListByRoleId(Integer roleId) {
		return authorityDao.findListByRoleId(roleId);
	}
	
	
}
