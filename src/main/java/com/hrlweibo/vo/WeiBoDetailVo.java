package com.hrlweibo.vo;

import com.hrlweibo.pojo.CommentReply;

import java.util.List;

public class WeiBoDetailVo {


    private List<CommentVo> comment;

    private List<WeiBoForwardVo> forward;


    public List<CommentVo> getComment() {
        return comment;
    }

    public void setComment(List<CommentVo> comment) {
        this.comment = comment;
    }

    public List<WeiBoForwardVo> getForward() {
        return forward;
    }

    public void setForward(List<WeiBoForwardVo> forward) {
        this.forward = forward;
    }



}
