package com.snbc.usermanagement.serviceimpl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;
import java.util.Map.Entry;
import com.snbc.usermanagement.service.ServiceUser;

/**
 * @className selectUserInfo.java
 * @funciton  查询用户  修改密码
 * @author liuxiang2
 * @CreatedTime: 2019年8月17日 上午11:05:54
 * @version V1.0
 * @copyright SNBC 2019
 */
@Service
public class ServiceUserImpl implements ServiceUser {
	/* (non-Javadoc)
	 * @see 查詢用戶
	 */
	@Override
	public HashMap<String, String> selectUser() {
		@SuppressWarnings("unchecked")
		HashMap<String, String> entrySet = ServiceLoginImpl.hs;
		return entrySet;
 
	}
	/* (non-Javadoc)
	 * @see 更改密码
	 */
	@Override
	public String update(String username,String password,String password1,String password3) {
		if (ServiceLoginImpl.hs.get(username).equals(password)) {
		 if(password.equals(password1)){
			return "redirect:updateerror1.jsp";
		}else if(!password1.equals(password3)){
			return "redirect:updateerror2.jsp";
		}
		}
		else {
			return "redirect:updateerror.jsp";
		}
		ServiceLoginImpl.hs.put(username, password1);
		return "redirect:update.jsp";
	}
	

}
