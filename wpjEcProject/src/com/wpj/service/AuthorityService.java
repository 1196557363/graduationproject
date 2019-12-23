package com.wpj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wpj.entity.Authority;

@Service
public interface AuthorityService {

	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Integer roleId);

}
