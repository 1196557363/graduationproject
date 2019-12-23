package com.wpj.user.dao;

import org.springframework.stereotype.Repository;

import com.wpj.user.entity.Details;

@Repository
public interface DetailsDao {

	public Details selectGoodsDetails(String name);

}
