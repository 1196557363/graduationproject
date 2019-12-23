package com.wpj.user.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.entity.User;
import com.wpj.user.dao.OrderDao;
import com.wpj.user.entity.Order;
import com.wpj.user.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public int addOrder(Order order) {
		return orderDao.addOrder(order);
	}

	@Override
	public List<Order> payOrder(String nick) {
		return orderDao.payOrder(nick);
	}

	@Override
	public List<Order> noPayOrder(String nick) {
		return orderDao.noPayOrder(nick);
	}
	
	@Override
	public List<Order> completeOrder(String nick) {
		return orderDao.completeOrder(nick);
	}

	@Override
	public List<Order> findList(Map<String, Object> queryMap) {
		return orderDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		return orderDao.getTotal(queryMap);
	}

	@Override
	public int getByOrderCount(String nick) {
		return orderDao.getByOrderCount(nick);
	}


	@Override
	public void updateOrder(String status, String orderId) {
		orderDao.updateOrder(status,orderId);
		
	}

}
