package com.hrlweibo.service;

import com.github.pagehelper.PageInfo;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.pojo.Topic;
import com.hrlweibo.pojo.TopicType;
import com.hrlweibo.vo.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;


public interface IWeiBoService {


    ServerResponse<PageInfo> getProductList(int catid,int pageNum, int pageSize,int userId);


    ServerResponse<WeiBoDetailVo> getWeiBoDetail(int weiboid);


    ServerResponse<PageInfo> getWeiBoForwardList(int weiboId, int pageNum, int pageSize);




    ServerResponse<WeiBoListVo> forwardWeiBo(int userid, String content, int zfweiboid);

    ServerResponse  zanWeiBo(int userid,   int zfweiboid,int status);


    ServerResponse<WeiBoAtUser> getWeiBoAtUserList( );


    ServerResponse<List<TopicType>> getTopicTypeList( );


    ServerResponse<List<TopicVo>> getTopicList(int topictype);


    ServerResponse  publishWeiBo( int userid, String content,MultipartFile[] multipartFile );








}
