package com.wpj.user.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wpj.user.entity.Catalog;

@Service
public interface CatalogService {

	public List<Catalog> ScannerFirstCatalog();

	public List<Catalog> ScannerSecondCatalog();
	
	
	
}
