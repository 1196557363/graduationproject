package com.wpj.user.entity;

import java.io.Serializable;

import lombok.Data;

import org.springframework.stereotype.Component;

@Component
@Data
public class Order implements Serializable{
	private Integer id;
	private String orderId;
	private String goodsName;
	private String consignee;
	private Double price;
	private Integer num;
	private Integer status;//1.未支付 2.已支付未签收 3.已签收
	private Double totalMoney;
	private String photo;
}
