package com.wpj.user.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wpj.user.entity.Order;
import com.wpj.user.entity.User_User;
import com.wpj.user.service.OrderService;

@RequestMapping("/order")
@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/addOrder", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addOrder(@Param("name") String name,@Param("consignee") String consignee,
			@Param("price") Double price,@Param("photo") String photo, @Param("num") Integer num,
			HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String, Object>();
		
		User_User u_user = (User_User) request.getSession().getAttribute("u_user");
		System.out.println("是否登录: " + u_user);
		if(u_user == null) {
			ret.put("type", "noLogin");
			return ret;
		}
		
		Order order = new Order();
		order.setOrderId(UUID.randomUUID().toString());
		order.setGoodsName(name);
		order.setConsignee(consignee);
		order.setPrice(price);
		order.setNum(num);
		double totalMoney = price * num;
		order.setTotalMoney(totalMoney);
		order.setStatus(1);
		order.setPhoto(photo);
		System.out.println(order);
		
		int result = orderService.addOrder(order);
		
		System.out.println("result: " + result);
		if(result == 1) {
			ret.put("type", "true");
		} else {
			ret.put("type", "false");
		}
		return ret;
	}
	
	@RequestMapping(value="/orderLoader", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> orderLoader(HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String, Object>();
		
		
		User_User u_user = (User_User) request.getSession().getAttribute("u_user");
		System.out.println("是否登录: " + u_user);
		if(u_user == null) {
			ret.put("type", "noLogin");
			return ret;
		}
		
		List<Order> payList = orderService.payOrder(u_user.getNick());
		List<Order> noPayList = orderService.noPayOrder(u_user.getNick());
		List<Order> completeList = orderService.completeOrder(u_user.getNick());
		
		if(payList != null) {
			ret.put("payList", payList);
		}
		if(noPayList != null) {
			ret.put("noPayList", noPayList);
		}
		if(completeList != null) {
			ret.put("completeList", completeList);
		}
		return ret;
	}
	
}
