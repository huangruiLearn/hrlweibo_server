package com.hrlweibo.dao;

import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.CommentReply;

import java.util.List;

public interface CommentReplyMapper  {
    int deleteByPrimaryKey(Long crid);

    int insert(CommentReply record);

    int insertSelective(CommentReply record);

    CommentReply selectByPrimaryKey(Long crid);

    int updateByPrimaryKeySelective(CommentReply record);

    int updateByPrimaryKey(CommentReply record);


    List<CommentReply> queryReplyListByComentId(Long commentid);
}