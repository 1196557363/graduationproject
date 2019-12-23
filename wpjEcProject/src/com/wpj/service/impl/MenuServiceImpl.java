package com.wpj.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.dao.MenuDao;
import com.wpj.entity.Menu;
import com.wpj.service.MenuService;


@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;

	@Override
	public int add(Menu menu) {
		return menuDao.add(menu);
	}

	@Override
	public List<Menu> findList(Map<String, Object> queryMap) {
		return menuDao.findList(queryMap);
	}

	@Override
	public List<Menu> findTopList() {
		return menuDao.findTopList();
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		return menuDao.getTotal(queryMap);
	}

	@Override
	public int edit(Menu menu) {
		return menuDao.edit(menu);
	}

	@Override
	public int delete(Long id) {
		return menuDao.delete(id);
	}

	@Override
	public List<Menu> findChildernList(Long parentId) {
		return menuDao.findChildernList(parentId);
	}

	@Override
	public List<Menu> findListByIds(String ids) {
		return menuDao.findListByIds(ids);
	}

}
