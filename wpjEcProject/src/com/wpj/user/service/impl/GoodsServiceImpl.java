package com.wpj.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.user.dao.GoodsDao;
import com.wpj.user.entity.Goods;
import com.wpj.user.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDao goodsDao;
	
	@Override
	public List<Goods> selectAllGoods() {
		return goodsDao.selectAllGoods();
	}

	@Override
	public List<Goods> selectByName(String catalogName) {
		return goodsDao.selectByName(catalogName);
	}

	@Override
	public double selectGoodsPrice(String cata) {
		return goodsDao.selectGoodsPrice(cata);
	}
	
}
