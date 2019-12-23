package com.wpj.user.service;

import org.springframework.stereotype.Service;

import com.wpj.user.entity.Details;

@Service
public interface DetailsService {

	public Details selectGoodsDetails(String name);
	
}
