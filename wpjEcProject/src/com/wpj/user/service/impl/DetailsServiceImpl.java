package com.wpj.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.user.dao.DetailsDao;
import com.wpj.user.entity.Details;
import com.wpj.user.service.DetailsService;

@Service
public class DetailsServiceImpl implements DetailsService{

	@Autowired
	private DetailsDao detailsDao;
	
	@Override
	public Details selectGoodsDetails(String name) {
		return detailsDao.selectGoodsDetails(name);
	}
	
	
	
}
