package com.wpj.page;

import org.springframework.stereotype.Component;

import lombok.Data;


@Data
@Component
public class Page {
	private int page = 1;//当前页码
	private int rows;//每页显示数量
	private int offset;//对应数据库中的偏移量
	
	public int getOffset() {
		this.offset = (page - 1) * rows;
		return offset;
	}
}
