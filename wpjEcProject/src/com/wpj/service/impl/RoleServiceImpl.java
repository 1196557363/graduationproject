package com.wpj.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.dao.RoleDao;
import com.wpj.entity.Role;
import com.wpj.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;
	
	@Override
	public int add(Role role) {
		return roleDao.add(role);
	}

	@Override
	public int edit(Role role) {
		return roleDao.edit(role);
	}

	@Override
	public int delete(Long id) {
		return roleDao.delete(id);
	}

	@Override
	public List<Role> findList(Map<String, Object> queryMap) {
		return roleDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		return roleDao.getTotal(queryMap);
	}

	@Override
	public Role find(Integer id) {
		return roleDao.find(id);
	}


}
