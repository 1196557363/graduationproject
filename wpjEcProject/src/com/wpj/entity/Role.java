package com.wpj.entity;

import lombok.Data;

import org.springframework.stereotype.Component;

@Component
@Data
public class Role {
	private Integer id;
	private String name;
	private String remark;
}
