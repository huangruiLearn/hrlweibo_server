package com.hrlweibo.dao;

import com.hrlweibo.pojo.Topic;
import com.hrlweibo.pojo.TopicType;

import java.util.List;

public interface TopicTypeMapper   {
    int deleteByPrimaryKey(Long id);

    int insert(TopicType record);

    int insertSelective(TopicType record);

    TopicType selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TopicType record);

    int updateByPrimaryKey(TopicType record);



    List<TopicType> selectAllTopicType();
}