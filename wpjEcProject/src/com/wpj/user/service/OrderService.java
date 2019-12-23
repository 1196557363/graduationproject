package com.wpj.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.wpj.entity.User;
import com.wpj.user.entity.Order;

@Service
public interface OrderService {

	public int addOrder(Order order);

	/**
	 * 未支付
	 * @return
	 */
	public List<Order> payOrder(String nick);
	/**
	 * 已支付未完成/未签收
	 * @return
	 */
	public List<Order> noPayOrder(String nick);
	/**
	 * 已完成
	 * @return
	 */
	public List<Order> completeOrder(String nick);
	
	public List<Order> findList(Map<String, Object> queryMap);
	
	public int getTotal(Map<String, Object> queryMap);

	public int getByOrderCount(String nick);

	public void updateOrder(String status, String orderId);
	
}
