package com.hrlweibo.dao;

import com.hrlweibo.pojo.Topic;
import com.hrlweibo.pojo.Zan;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ZanMapper  {
    int deleteByPrimaryKey(Long zanid);

    int insert(Zan record);

    int insertSelective(Zan record);

    Zan selectByPrimaryKey(Long zanid);

    int updateByPrimaryKeySelective(Zan record);


    //https://blog.csdn.net/crazy_java1234/article/details/53022011
    Zan selectRecordByUserAndWeiBo(@Param("userid") Long userid,@Param("weiboid") Long weiboid);


    List<Zan> queryZanList();

}