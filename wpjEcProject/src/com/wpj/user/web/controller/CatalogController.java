package com.wpj.user.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wpj.user.entity.Catalog;
import com.wpj.user.service.CatalogService;


@RequestMapping("/catalog")
@Controller
public class CatalogController {

	@Autowired
	private CatalogService catalogService;
	
	/**
	 * 加载菜单
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/catalogLoader", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> catalogLoader(HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String, Object>();
		
		List<Catalog> cfList = catalogService.ScannerFirstCatalog();
		ret.put("cfList", cfList);
		return ret;
	}

	/**
	 * 加载二级菜单
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/secondCatalogLoader", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> secondCatalogLoader(HttpServletRequest request){
		Map<String, Object> ret = new HashMap<String, Object>();
		List<Catalog> csList = catalogService.ScannerSecondCatalog();
		ret.put("csList", csList);
		return ret;
	}
	
}
