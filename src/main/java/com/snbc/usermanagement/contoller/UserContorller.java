package com.snbc.usermanagement.contoller;

import java.util.Map.Entry;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.snbc.usermanagement.service.ServiceUser;
import com.snbc.usermanagement.serviceimpl.ServiceUserImpl;

/**
 * @className UserContorller.java
 * @funciton  查询用户  修改密码
 * @author liuxiang2
 * @CreatedTime: 2019年8月17日 下午6:53:24
 * @version V1.0
 * @copyright SNBC 2019
 */
@Controller
public class UserContorller {
	@Autowired
	private ServiceUserImpl serviceselect;
	/**
	 * 
	 * @funciton 查询用户
	 * @author liuxiang2
	 * @param username
	 * @param password
	 */
	@RequestMapping("/select")
	public String selectUser(HttpServletRequest request) {
		return "redirect:/static/user/article-list.jsp";
	}
	/**s
	 * 
	 * @funciton 修改密码
	 * @author liuxiang2
	 * @param username
	 * @param password
	 */
	@RequestMapping("/update")
	  public String updateUser(String username,String password,String password1,String password3){
		System.out.println(username);
		serviceselect.update(username, password,password1,password3);
		return serviceselect.update(username, password,password1,password3);
		 }
}
