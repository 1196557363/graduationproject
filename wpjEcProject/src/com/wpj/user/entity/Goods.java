package com.wpj.user.entity;

import lombok.Data;

import org.springframework.stereotype.Component;

@Component
@Data
public class Goods {
	private Integer id;
	private String name;
	private Double price;
	private String category;
	private String desc;
	private String photo;
}
