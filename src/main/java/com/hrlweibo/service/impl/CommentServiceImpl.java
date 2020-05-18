package com.hrlweibo.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.dao.CommentMapper;
import com.hrlweibo.dao.CommentReplyMapper;
import com.hrlweibo.dao.UserMapper;
import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.CommentReply;
import com.hrlweibo.pojo.User;
import com.hrlweibo.service.ICommentService;
import com.hrlweibo.util.TxFileUtil;
import com.hrlweibo.vo.CommentReplyVo;
import com.hrlweibo.vo.CommentVo;
import com.hrlweibo.vo.WeiBoListVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("ICommentService")
public class CommentServiceImpl implements ICommentService {


    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private CommentReplyMapper commentReplyMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public ServerResponse<PageInfo> getCommentList(int weiboId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Comment> productList = commentMapper.queryListByWeiBoId(Long.parseLong("1"));
        List<CommentVo> productListVoList = Lists.newArrayList();
        productListVoList = getCommonCommenttList(productList, weiboId);
        PageInfo pageResult = new PageInfo(productList);
        pageResult.setList(productListVoList);
        return ServerResponse.createBySuccess(pageResult);
    }


    @Override
    public ServerResponse<PageInfo> getCommentReplyList(int commentidId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<CommentReply> mCommentReplyList = commentReplyMapper.queryReplyListByComentId(Long.parseLong(commentidId + ""));
        List<CommentReplyVo> mCommentReplyVoList = Lists.newArrayList();
        for (CommentReply mCommentReply : mCommentReplyList) {
            CommentReplyVo mCommentReplyVo = new CommentReplyVo();
            User mUser = userMapper.selectByPrimaryKey(Integer.parseInt(mCommentReply.getCruserid() + ""));
            mCommentReplyVo.setFromuid(mCommentReply.getCruserid() + "");
            mCommentReplyVo.setFromhead(TxFileUtil.baseTxUrl + mUser.getHeadurl() + "");
            mCommentReplyVo.setFromuname(mUser.getNick() + "");
            mCommentReplyVo.setFromuserismember(mUser.getIsmember());
            mCommentReplyVo.setFromuserisvertify(mUser.getIsvertify());
            mCommentReplyVo.setCommentid(mCommentReply.getCommentid() + "");
            mCommentReplyVo.setContent(mCommentReply.getCrcontent() + "");
            mCommentReplyVo.setCreatetime(mCommentReply.getCrcreatetime());
            mCommentReplyVoList.add(mCommentReplyVo);
        }
        PageInfo pageResult = new PageInfo(mCommentReplyVoList);
        pageResult.setList(mCommentReplyVoList);
        return ServerResponse.createBySuccess(pageResult);
    }


    @Override
    public ServerResponse<WeiBoListVo> addComment(String userid, String weiboId, String content) {
        Comment mComment = new Comment();
        mComment.setWeiboid(Long.parseLong("1"));
        mComment.setContent(content);
        mComment.setUserid(Long.parseLong(userid));
        mComment.setZannum(0);
        int resultCount = commentMapper.insert(mComment);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("评论失败");
        }
        return ServerResponse.createBySuccessMessage("评论成功");

    }

    @Override
    public ServerResponse addCommentReply(String userid, String commentid, String content) {


        CommentReply mCommentReply = new CommentReply();
        mCommentReply.setCommentid(Integer.parseInt(commentid));
        mCommentReply.setCrcontent(content);
        mCommentReply.setCruserid(Long.parseLong(userid));
        mCommentReply.setCrzannum(0);
        int resultCount = commentReplyMapper.insert(mCommentReply);
        if (resultCount == 0) {
            return ServerResponse.createByErrorMessage("回复评论失败");
        }
        return ServerResponse.createBySuccessMessage("回复评论成功");

    }


    public List<CommentVo> getCommonCommenttList(List<Comment> productList, int weiboId) {
        List<CommentVo> productListVoList = Lists.newArrayList();
        for (Comment productItem : productList) {
            CommentVo productListVo = assembleProductListVo(productItem);
            productListVoList.add(productListVo);
        }
        return productListVoList;
    }

    private CommentVo assembleProductListVo(Comment mComment) {
        CommentVo mCommentVo = new CommentVo();
        User mUser = userMapper.selectByPrimaryKey(Integer.parseInt(mComment.getUserid() + ""));
        List<CommentReply> mCommentReplyList = commentReplyMapper.queryReplyListByComentId(Long.parseLong(mComment.getCommentid() + ""));


        List<CommentReplyVo> mCommentReplyListVo = new ArrayList<>();
        for (int i = 0; i < mCommentReplyList.size(); i++) {
            CommentReplyVo mVo = new CommentReplyVo();
            User mUserReply = userMapper.selectByPrimaryKey(Integer.parseInt(mCommentReplyList.get(i).getCruserid() + ""));
            mVo.setCrid(mCommentReplyList.get(i).getCrid() + "");
            mVo.setFromuid(mUserReply.getId() + "");
            mVo.setFromhead(TxFileUtil.baseTxUrl + mUserReply.getHeadurl() + "");
            mVo.setFromuname(mUserReply.getNick() + "");
            mVo.setFromuserismember(mUserReply.getIsmember());
            mVo.setFromuserisvertify(mUserReply.getIsvertify());
            mVo.setContent(mCommentReplyList.get(i).getCrcontent() + "");
            mVo.setCreatetime(mCommentReplyList.get(i).getCrcreatetime());
            mCommentReplyListVo.add(mVo);
        }


        mCommentVo.setCommentid(mComment.getCommentid() + "");
        mCommentVo.setWeiboid(mComment.getWeiboid() + "");
        mCommentVo.setFromuid(mComment.getUserid() + "");
        mCommentVo.setFromhead(TxFileUtil.baseTxUrl + mUser.getHeadurl() + "");
        mCommentVo.setFromuname(mUser.getNick() + "");
        mCommentVo.setFromuserismember(mUser.getIsmember());
        mCommentVo.setFromuserisvertify(mUser.getIsvertify());
        mCommentVo.setContent(mComment.getContent() + "");
        mCommentVo.setCreatetime(mComment.getCreatetime());
        mCommentVo.setCommentreplynum(mCommentReplyListVo.size());
        if (mCommentReplyListVo.size() < 3) {
            mCommentVo.setCommentreply(mCommentReplyListVo);
        } else {
            mCommentVo.setCommentreply(mCommentReplyListVo.subList(0, 2));
        }

        return mCommentVo;
    }
}
