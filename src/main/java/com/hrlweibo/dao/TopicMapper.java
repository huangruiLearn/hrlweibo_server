package com.hrlweibo.dao;

import com.hrlweibo.pojo.Topic;
import com.hrlweibo.pojo.User;

import java.util.List;

public interface TopicMapper  {
    int deleteByPrimaryKey(Long topicid);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Long topicid);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKey(Topic record);



     List<Topic> selectTopicByTypeId(int topictype);
}