package com.wpj.entity;

import java.util.Date;

import lombok.Data;

import org.springframework.stereotype.Component;

@Component
@Data
public class Log {
	private Long id;
	private String content;//日志内容
	private Date createTime;//创建时间
}
