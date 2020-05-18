package com.hrlweibo.dao;

import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.FindKind;

import java.util.ArrayList;
import java.util.List;

public interface FindKindMapper  {
    int deleteByPrimaryKey(Integer id);

    int insert(FindKind record);

    int insertSelective(FindKind record);

    FindKind selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FindKind record);

    int updateByPrimaryKey(FindKind record);

    ArrayList<FindKind> queryAllFindKind( );
}