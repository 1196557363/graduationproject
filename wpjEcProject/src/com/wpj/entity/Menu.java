package com.wpj.entity;

import java.io.Serializable;

import lombok.Data;

import org.springframework.stereotype.Component;

@Component
@Data
public class Menu implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer parentId;
	private Integer _parentId;//父类id,用来匹配easyui的父类id
	private String name;
	private String url;
	private String icon;
	
	public Integer get_parentId(){
		_parentId = parentId;
		return _parentId;
	}
}
