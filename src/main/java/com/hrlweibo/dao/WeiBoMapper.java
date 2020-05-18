package com.hrlweibo.dao;

import com.hrlweibo.pojo.WeiBo;

import java.util.List;

public interface WeiBoMapper {
    int deleteByPrimaryKey(Long weiboId);

    int insert(WeiBo record);

    int insertSelective(WeiBo record);

    WeiBo selectByPrimaryKey(Long weiboId);

    int updateByPrimaryKeySelective(WeiBo record);

    int updateByPrimaryKey(WeiBo record);

    int insertZhuanFaWeiBo(WeiBo record);

    List<WeiBo> selectListByCatId(Long catid);


    List<WeiBo> selectListByZfId(Long weiboId);

}