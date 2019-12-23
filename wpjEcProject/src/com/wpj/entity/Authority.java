package com.wpj.entity;

import lombok.Data;

import org.springframework.stereotype.Component;

@Component
@Data
public class Authority {
	private Long id;
	private Long roleId;//角色id
	private Long menuId;//菜单id

	
}
