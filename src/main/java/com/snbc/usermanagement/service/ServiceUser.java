package com.snbc.usermanagement.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.stereotype.Service;

/**
 * @className selectUser.java
 * @funciton
 * @author liuxiang2
 * @CreatedTime: 2019年8月17日 上午11:03:25
 * @version V1.0
 * @copyright SNBC 2011
 */
public interface ServiceUser {
	 HashMap<String, String> selectUser();//查询用户
	 String update(String username,String password,String password1,String password3);//更改密码
}
