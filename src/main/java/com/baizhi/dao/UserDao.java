package com.baizhi.dao;

import com.baizhi.entity.User;

import java.util.List;

public interface UserDao {
    //查询全部
    List<User>getAll();
    //添加
    void add(User user);
    //删除
    void delete(int id);
    //修改
    void update(User user);
    //一个
    User selectOne(int id);
    //勾删
    void delete2(int [] id);

}
