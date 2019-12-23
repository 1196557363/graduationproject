package com.wpj.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wpj.user.entity.Goods;

@Repository
public interface GoodsDao {

	public List<Goods> selectAllGoods();

	public List<Goods> selectByName(String catalogName);

	public double selectGoodsPrice(@Param("name")String cata);


}
