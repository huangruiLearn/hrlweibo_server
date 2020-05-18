package com.hrlweibo.service;

import com.github.pagehelper.PageInfo;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.vo.WeiBoListVo;


public interface ICommentService {


    ServerResponse<PageInfo> getCommentList(int weiboId, int pageNum, int pageSize);

    ServerResponse<PageInfo> getCommentReplyList(int commentidId, int pageNum, int pageSize);


    ServerResponse addComment(String userid, String weiboId, String content);


    ServerResponse addCommentReply(String userid, String commentid, String content);
}
