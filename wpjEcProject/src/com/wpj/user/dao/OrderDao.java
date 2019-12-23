package com.wpj.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wpj.user.entity.Order;

@Repository
public interface OrderDao {

	public int addOrder(@Param("entity")Order order);

	public List<Order> payOrder(@Param("nick")String nick);

	public List<Order> noPayOrder(@Param("nick")String nick);
	
	public List<Order> completeOrder(@Param("nick")String nick);

	public int getByOrderCount(@Param("nick")String nick);

	public List<Order> findList(Map<String, Object> queryMap);

	public int getTotal(Map<String, Object> queryMap);

	public void updateOrder(@Param("status")String status, @Param("orderId")String orderId);

}
