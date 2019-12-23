package com.wpj.user.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.wpj.user.entity.Catalog;

@Repository
public interface CatalogDao {
	
	public List<Catalog> ScannerFirstCatalog();

	public List<Catalog> ScannerSecondCatalog();
}
