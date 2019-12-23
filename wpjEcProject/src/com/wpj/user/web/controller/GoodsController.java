package com.wpj.user.web.controller;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wpj.user.entity.Goods;
import com.wpj.user.service.GoodsService;

@RequestMapping("/goods")
@Controller
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	/**
	 * 加载商品
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/goodsLoader", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> catalogLoader(HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String, Object>();
		List<Goods> gLists = goodsService.selectAllGoods();
		ret.put("gLists", gLists);
		return ret;
	}
	
	
	
	
	
	/**
	 * 根据名字查询商品
	 * @param cataName
	 * @return
	 */
	@RequestMapping(value="/selectByName", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> selectByName(@Param("cataName") String cataName){
		Map<String, Object> ret = new HashMap<String, Object>();
		String cata = null;
		try {
			cata = URLDecoder.decode(cataName,"utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		List<Goods> gLists = goodsService.selectByName(cata);
		ret.put("gLists", gLists);
		return ret;
	}
	
	/**
	 * 根据名字查询价格
	 * @param cataName
	 * @return
	 */
	@RequestMapping(value="/selectGoodsPrice", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> selectGoodsPrice(@Param("name") String name){
		Map<String, Object> ret = new HashMap<String, Object>();
		String cata = null;
		try {
			cata = URLDecoder.decode(name,"utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		double price = goodsService.selectGoodsPrice(cata);
		ret.put("price", price);
		return ret;
	}
	
	
	/**
	 * 进入商品详情
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/details", method = RequestMethod.GET)
	public ModelAndView details(ModelAndView model){
		model.setViewName("user/details/details");
		return model;
	}
}
