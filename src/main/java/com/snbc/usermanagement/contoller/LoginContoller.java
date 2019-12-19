package com.snbc.usermanagement.contoller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.snbc.usermanagement.service.ServiceLogin;
import com.snbc.usermanagement.service.ServiceUser;
import com.snbc.usermanagement.serviceimpl.ServiceLoginImpl;

/**
 * @className Contoller.java
 * @funciton 用户登录，用户添加
 * @author liuxiang2
 * @CreatedTime: 2019年8月14日 下午3:48:44
 * @version V1.0
 * @copyright SNBC 2019
 */
@Controller
public class LoginContoller {
	@Autowired
	private ServiceLoginImpl service;
	/**
	 * 
	 * @funciton 登录验证
	 * @author liuxiang2
	 * @param username
	 * @param password
	 */
	@RequestMapping("/login")
	  public String index(String username,String password){
			if (username.equals("")||password.equals("")) {
				return "error1";
			}else {
				service.login(username, password);
				return service.login(username, password);
			}
	 }
	/**
	 * 
	 * @funciton 注册用户
	 * @author liuxiang2
	 * @param username
	 * @param password
	 */
	@RequestMapping("/add")
	  public String add(String username,String password){
		service.register(username, password);
		return service.register(username, password);
 }
	
	  @RequestMapping(value="/index")
	    public String index(){
	        return "index";
	    }
}
