package com.alibaba.dao.UserDAO;

import com.alibaba.pojo.User;

public interface UserDao {
    int addUser(User user);
    int updateUser(User user);
    User queryUser(Long id);
    User queryByName(String sysName);
}
