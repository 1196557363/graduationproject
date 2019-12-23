package com.wpj.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpj.user.dao.CatalogDao;
import com.wpj.user.entity.Catalog;
import com.wpj.user.service.CatalogService;

@Service
public class CatalogServiceImpl implements CatalogService {

	
	@Autowired
	private CatalogDao catalogDao;
	
	@Override
	public List<Catalog> ScannerFirstCatalog() {
		return catalogDao.ScannerFirstCatalog();
	}

	@Override
	public List<Catalog> ScannerSecondCatalog() {
		
		return catalogDao.ScannerSecondCatalog();
	}

}
