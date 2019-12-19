package com.snbc.usermanagement.serviceimpl;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;

import org.springframework.stereotype.Service;

import com.snbc.usermanagement.service.ServiceLogin;



@Service
public class ServiceLoginImpl implements ServiceLogin {
	public static HashMap<String, String> hs = new HashMap<String, String>();
	static 
	{ 
		hs.put("test1", "abccba");
		hs.put("test2", "123456");
		hs.put("test3", "654321");
	}
	/* (non-Javadoc)
	 * @see登錄驗證
	 */
	@Override
	public String login(String username, String password) {
		//hs.put("test1", "abccba");
		if (hs.containsKey(username)&&hs.get(username).equals(password)) {
			return "redirect:/static/user/index2.jsp";
		}else if (!(hs.containsKey(username))) {
			return "error3";
		} else { 
			return "error2";
		}
		
}
	/* (non-Javadoc)
	 * @see添加用戶
	 */
	@Override
	public String register(String username, String password) {
		 if (!(hs.containsKey(username))) {
				hs.put(username, password);
			} 
		return "redirect:add.jsp";
	}
	

   

  
   


  
}
