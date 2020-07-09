package com.alibaba.service.impl;

import com.alibaba.dao.UserDao;
import com.alibaba.pojo.User;
import com.alibaba.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserManagerImpl implements UserManager {

    @Autowired
    private UserDao userDao;

    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public User queryUser(Long id) {
        return userDao.queryUser(id);
    }

    @Override
    public User queryByName(String sysName) {
        return userDao.queryByName(sysName);
    }

    @Override
    public User Match(String sysName, String passWord) {
        User fetch_info = userDao.queryByName(sysName);
        if (fetch_info == null) {
            return null;
        } else{
            if (!passWord.equals(fetch_info.passWord)) {
                return null;
            }
            return fetch_info;
        }
    }
}
