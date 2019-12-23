package com.wpj.user.entity;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Details {
	private Integer id;
	private String serialNumber;
	private String name;
	private String detailName;
	private String address;
	private String other;
	private String photos;
	private Integer catalogId;
	private Integer repertory;
	private Double weight;
}
