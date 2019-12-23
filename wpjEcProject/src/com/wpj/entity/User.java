package com.wpj.entity;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.ToString;
/**
 * code is far away from bug with the animal protecting
 *  ┏┓　　　┏┓
 * ┏┛┻━━━┛┻┓
 * ┃                            ┃
 * ┃        　━            ┃
 * ┃    ┳┛    ┗┳    ┃
 * ┃                            ┃
 * ┃        　┻            ┃
 * ┃                            ┃
 * ┗━┓　　　┏━┛
 *　　   ┃　　　┃神兽保佑
 *　　   ┃　　　┃代码无BUG！
 *　　   ┃　　　┗━━━┓
 *　       ┃                            ┣┓
 *　　   ┃　　　　　　　┏┛
 *　　   ┗┓┓┏━┳┓┏┛
 *　　　   ┃┫┫　┃┫┫
 *　　　   ┗┻┛　┗┻┛
 *
 * @Description : SSM
 * ---------------------------------
 * @Author : 杰KaMi
 * 
 * 
 */
@Component
@Data
@ToString(exclude={"roleId"})
public class User {
	private Integer id;//主键
	private String username;
	private String password;
	private int sex;	// 1男2女
	private int age;
	private String address;
	private String photo;//头像
	private Integer roleId; //角色Id
}
