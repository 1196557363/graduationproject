package com.wpj.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.wpj.entity.Log;

@Repository
public interface LogDao {
	public int add(Log log);
	public int add(String content);
	public List<Log> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
	public int delete(String ids);
}
