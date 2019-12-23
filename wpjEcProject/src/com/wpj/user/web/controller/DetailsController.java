package com.wpj.user.web.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wpj.user.entity.Details;
import com.wpj.user.service.DetailsService;

@RequestMapping("/details")
@Controller
public class DetailsController {
	
	@Autowired
	private DetailsService detailsService;
	
	@RequestMapping(value="/selectDetails", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> selectDetails(@Param("name")String name){
		Map<String, Object> ret = new HashMap<String, Object>();
		String dName = null;
		try {
			dName = URLDecoder.decode(name, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		Details details = detailsService.selectGoodsDetails(dName);
		ret.put("details", details);
		return ret;
	}
	
	
}
