package com.alibaba.service;

import com.alibaba.pojo.User;

public interface UserManager {
    int addUser(User user);
    int updateUser(User user);
    User queryUser(Long id);
    User queryByName(String sysname);
    User Match(String sysName, String passWord);
}
