package com.hrlweibo.service.impl;


import com.github.pagehelper.Constant;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.hrlweibo.common.ServerResponse;
import com.hrlweibo.dao.CommentMapper;
import com.hrlweibo.dao.UserMapper;
import com.hrlweibo.dao.WeiBoMapper;
import com.hrlweibo.dao.ZanMapper;
import com.hrlweibo.pojo.Comment;
import com.hrlweibo.pojo.User;
import com.hrlweibo.pojo.WeiBo;
import com.hrlweibo.pojo.Zan;
import com.hrlweibo.service.IMessageService;
import com.hrlweibo.util.TxFileUtil;
import com.hrlweibo.vo.MessageZanCommentVo;
import org.apache.http.util.TextUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("IMessageService")
public class MessageServiceImpl implements IMessageService {

    @Autowired
    private ZanMapper mZanMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private WeiBoMapper mWeiBoMapper;
    @Autowired
    private CommentMapper mCommentMapper;

    @Override
    public ServerResponse getMessageZan(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Zan> mZanList = mZanMapper.queryZanList();
        List<MessageZanCommentVo> mZanVoList = Lists.newArrayList();

        for (int i = 0; i < mZanList.size(); i++) {
            MessageZanCommentVo mVo = new MessageZanCommentVo();
            Zan mZan = mZanList.get(i);
            User mUser = userMapper.selectByPrimaryKey(Integer.parseInt(mZan.getUserid() + ""));
            mVo.setUserid(mZan.getUserid() + "");
            mVo.setUsername(mUser.getNick() + "");
            mVo.setUserheadurl(TxFileUtil.baseTxUrl + mUser.getHeadurl() + "");
            mVo.setCreatetime(mZan.getCreatetime());
            mVo.setIsmember(mUser.getIsmember());
            mVo.setTail(mZan.getTail());
            mVo.setContent("赞了这条微博");

            WeiBo mWeiBo = mWeiBoMapper.selectByPrimaryKey(mZan.getWeiboid());

            mVo.setWeiboid(mZan.getWeiboid() + "");

            if (TextUtils.isEmpty(mWeiBo.getPic1())) {
                mVo.setWeibopicurl("");
            } else {
                mVo.setWeibopicurl(mWeiBo.getPic1() + "");
            }
            mVo.setWeibcontent(mWeiBo.getContent() + "");
            User mUser2 = userMapper.selectByPrimaryKey(Integer.parseInt(mWeiBo.getUserId() + ""));
            mVo.setWeibousername(mUser2.getNick() + "");


            mZanVoList.add(mVo);
        }


        PageInfo pageResult = new PageInfo(new ArrayList());
        pageResult.setList(mZanVoList);
        return ServerResponse.createBySuccess(pageResult);


    }


    @Override
    public ServerResponse getMessageComment(int pageNum, int pageSize) {

        PageHelper.startPage(pageNum, pageSize);
        List<Comment> mZanList = mCommentMapper.queryCommentList();
        List<MessageZanCommentVo> mZanVoList = Lists.newArrayList();

        for (int i = 0; i < mZanList.size(); i++) {
            MessageZanCommentVo mVo = new MessageZanCommentVo();
            Comment mZan = mZanList.get(i);
            User mUser = userMapper.selectByPrimaryKey(Integer.parseInt(mZan.getUserid() + ""));
            mVo.setUserid(mZan.getUserid() + "");
            mVo.setUsername(mUser.getNick() + "");
            mVo.setUserheadurl(TxFileUtil.baseTxUrl + mUser.getHeadurl() + "");
            mVo.setCreatetime(mZan.getCreatetime());
            mVo.setIsmember(mUser.getIsmember());
            mVo.setTail(mZan.getTail());
            mVo.setContent(mZan.getContent() + "");

            WeiBo mWeiBo = mWeiBoMapper.selectByPrimaryKey(mZan.getWeiboid());

            mVo.setWeiboid(mZan.getWeiboid() + "");

            if (TextUtils.isEmpty(mWeiBo.getPic1())) {
                mVo.setWeibopicurl("");
            } else {
                mVo.setWeibopicurl(mWeiBo.getPic1() + "");
            }
            mVo.setWeibcontent(mWeiBo.getContent() + "");
            User mUser2 = userMapper.selectByPrimaryKey(Integer.parseInt(mWeiBo.getUserId() + ""));
            mVo.setWeibousername(mUser2.getNick() + "");


            mZanVoList.add(mVo);
        }


        PageInfo pageResult = new PageInfo(new ArrayList());
        pageResult.setList(mZanVoList);
        return ServerResponse.createBySuccess(pageResult);
    }


}
