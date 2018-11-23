package com.baizhi.service;

import com.baizhi.entity.User;

import java.util.List;

public interface UserService {

    //查
    public List<User> getAll();
    //添加
    public void add(User user);
    //删除
    public void delete(int id);
    //修改
    public void update(User user);
    //一个
    public User selectOne(int id);
    //勾删
    public void delete2(int [] id);
}
