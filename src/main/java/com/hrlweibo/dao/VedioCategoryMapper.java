package com.hrlweibo.dao;

import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.VedioCategory;

import java.util.List;

public interface VedioCategoryMapper    {
    int deleteByPrimaryKey(Integer id);

    int insert(VedioCategory record);

    int insertSelective(VedioCategory record);

    VedioCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VedioCategory record);

    int updateByPrimaryKey(VedioCategory record);


    List<VedioCategory> queryAllVedioCategory();

}