package com.wpj.user.web.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wpj.user.entity.User_User;
import com.wpj.user.service.OrderService;
import com.wpj.user.service.User_UserService;

@RequestMapping("/u_user")
@Controller
public class User_SystemController {
	
	@Autowired
	private User_UserService user_UserService;
	
	@Autowired
	private OrderService orderService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView model) {
		model.setViewName("user/login/login");
		return model;
	}
	
	/**
	 * 验证登录
	 * @param account
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> login(String account, String password,HttpServletRequest request){
		Map<String, String> ret = new HashMap<String, String>();
		// 验证账号密码
		User_User u_user = user_UserService.u_FindByUsername(account, password);
		if(u_user == null) {
			ret.put("type", "false");
			ret.put("msg", "登录失败！");
			return ret;
		}
		HttpSession session = request.getSession();
		session.setAttribute("u_user", u_user);
		int orderCount = orderService.getByOrderCount(u_user.getNick());
		
		session.setAttribute("orderCount", orderCount);
		System.out.println(orderCount);
		
		ret.put("type", "true");
		ret.put("msg", "登录成功！");
		return ret;
	}
	/**
	 * 跳转主页
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index(ModelAndView model) {
		model.setViewName("user/index/index");
		return model;
	}
	
	
	@RequestMapping(value = "/noLogin", method = RequestMethod.GET)
	public ModelAndView noLogin(ModelAndView model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("u_user", null);
		session.setAttribute("orderCount", null);
		
		model.setViewName("user/login/login");
		return model;
	}
	
	
	
	/**
	 * 跳转注册页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(ModelAndView model) {
		model.setViewName("user/register/register");
		return model;
	}
	/**
	 * 注册校验
	 * @param account
	 * @param password
	 * @param phone
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> register(@RequestParam(name="account",required=true) String account, 
			@RequestParam(name="password",required=true) String password, 
			@RequestParam(name="phone",required=true) String phone, HttpServletRequest request){
		Map<String, String> ret = new HashMap<String, String>();
		User_User u_user = new User_User();
		String nick = "用户" + (int)(Math.random() * 1000);
		u_user.setNick(nick);
		u_user.setAccount(account);
		u_user.setPassword(password);
		u_user.setPhone(phone);
		u_user.setCreateTime(new Date());
		int result = user_UserService.insertUser_User(u_user);
		if(result == 1) {
			ret.put("type", "true");
		} else {
			ret.put("type", "false");
		}
		return ret;
	}
	
	/**
	 * 验证注册账户存在否
	 * @param account
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/existsAccount", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,String> existsAccount(String account,HttpServletRequest request){
		Map<String, String> ret = new HashMap<String, String>();
		boolean isExist = user_UserService.selectAccountByAccount(account);
		// 返回true代表有值 用户名重复了
		if(!isExist) {
			ret.put("type", "true");
		} else {
			ret.put("type", "false");
		}
		return ret;
	}
	
	/**
	 * 跳转商品集
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView model) {
		model.setViewName("user/list/list");
		return model;
	}
	
	/**
	 * 跳转详情集
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public ModelAndView details(ModelAndView model) {
		model.setViewName("user/details/details");
		return model;
	}
	/**
	 * 跳转订单集
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView order(ModelAndView model) {
		model.setViewName("user/order/order");
		return model;
	}
}
