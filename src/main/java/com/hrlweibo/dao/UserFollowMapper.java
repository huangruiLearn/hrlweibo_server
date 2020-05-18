package com.hrlweibo.dao;

import com.hrlweibo.pojo.UserFollow;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface UserFollowMapper   {
    int deleteByPrimaryKey(Long id);

    int insert(UserFollow record);

    int insertSelective(UserFollow record);

    UserFollow selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserFollow record);

    int updateByPrimaryKey(UserFollow record);

    List<Long> selectUserFollow(Long useid);

    List<Long> selectUserFan(Long useid);


    List<Integer> getFollowRelation(@Param("userId") String userId, @Param("otheruserId")long otheruserId);

    int selectRelation(@Param("userId") long userId, @Param("otheruserId")long otheruserId);

    int deleteRelation(@Param("userId") long userId, @Param("otheruserId")long otheruserId);

}