package com.hrlweibo.dao;

import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.Zan;

import java.util.List;

public interface CommentMapper   {
    int deleteByPrimaryKey(Long commentid);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Long commentid);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);


    List<Comment> queryListByWeiBoId(Long weiboId);


    List<Comment> queryCommentList();



}