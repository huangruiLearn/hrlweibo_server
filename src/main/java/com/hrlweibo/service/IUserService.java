package com.hrlweibo.service;

import com.github.pagehelper.PageInfo;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.pojo.FeedBack;
import com.hrlweibo.pojo.User;
import com.hrlweibo.vo.*;
import org.springframework.web.multipart.MultipartFile;

import javax.print.attribute.IntegerSyntax;
import java.lang.reflect.Array;
import java.util.ArrayList;


public interface IUserService {


    ServerResponse<UserVo> login(String username, String password);

    ServerResponse<String> register(User user);


    ServerResponse<User> updateInformation(User user);

    ServerResponse<OtherUserVo> getInformation(String muserId, String otheruserId);


    ServerResponse  feedback(MultipartFile[] multipartFile, FeedBack mFeed);


    ServerResponse<String> updateUserHead( MultipartFile mFile,long userId);


    ServerResponse<String> updatePersonSign( String mSign,long userId);


    ServerResponse<String> updateNick( String mNick,long userId);


    ServerResponse<PageInfo> getFanList( long userId,long otheruserId,int pageNum,int pageSize);

    ServerResponse<PageInfo> getFollowList(  long userId,long otheruserId,int pageNum,int pageSize);


    ServerResponse<PageInfo> getFanFollowRecList(  long userId ,int pageNum,int pageSize);


    ServerResponse<FollowVo> followOther(long userId , long otheruserId);

    ServerResponse<FollowVo> followCancelOther(  long userId ,long otheruserId);

}
