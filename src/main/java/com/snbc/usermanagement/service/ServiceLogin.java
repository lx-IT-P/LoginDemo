package com.snbc.usermanagement.service;

import org.springframework.stereotype.Service;


public interface ServiceLogin {
   String login (String username,String password);//登录身份验证
   String register (String username,String password);//添加用户
}
