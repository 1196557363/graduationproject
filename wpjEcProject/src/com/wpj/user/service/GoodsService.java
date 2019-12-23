package com.wpj.user.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wpj.user.entity.Goods;

@Service
public interface GoodsService {

	public List<Goods> selectAllGoods();

	public List<Goods> selectByName(String catalogName);

	public double selectGoodsPrice(String cata);
	
}
