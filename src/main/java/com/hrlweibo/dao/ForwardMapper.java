package com.hrlweibo.dao;

import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.Forward;

import java.util.List;

public interface ForwardMapper   {
    int deleteByPrimaryKey(Long forwardid);

    int insert(Forward record);

    int insertSelective(Forward record);

    Forward selectByPrimaryKey(Long forwardid);

    int updateByPrimaryKeySelective(Forward record);

    int updateByPrimaryKey(Forward record);


    List<Forward> queryList();
}