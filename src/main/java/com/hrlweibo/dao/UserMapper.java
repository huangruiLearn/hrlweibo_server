package com.hrlweibo.dao;

import com.hrlweibo.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    int checkUsername(String username);

    User selectLogin(@Param("username") String username, @Param("password")String password);

    int  updateUserHeadByPrimaryKey(@Param("headurl") String headurl, @Param("userid")long userid);

    int  updatePersonSignByPrimaryKey(@Param("personsign") String personsign, @Param("userid")long userid);

    int  updatePersonNickByPrimaryKey(@Param("nick") String nick, @Param("userid")long userid);

    List<User> selectAllUser();

}