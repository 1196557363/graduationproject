package com.wpj.user.entity;

import org.springframework.stereotype.Component;

import lombok.Data;


@Component
@Data
public class Catalog {
	private Integer id;
	private String name;
	private Integer pid;
}
