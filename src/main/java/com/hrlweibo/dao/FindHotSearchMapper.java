package com.hrlweibo.dao;

import com.hrlweibo.pojo.FindHotSearch;
import com.hrlweibo.pojo.FindKind;

import java.util.ArrayList;

public interface FindHotSearchMapper  {
    int deleteByPrimaryKey(Long hotid);

    int insert(FindHotSearch record);

    int insertSelective(FindHotSearch record);

    FindHotSearch selectByPrimaryKey(Long hotid);

    int updateByPrimaryKeySelective(FindHotSearch record);

    int updateByPrimaryKey(FindHotSearch record);

    ArrayList<FindHotSearch> queryAllFindHotSearch( );

    ArrayList<FindHotSearch> queryFindHotSearchTop( );

    ArrayList<FindHotSearch> queryFindHotSearchCenter( );

}