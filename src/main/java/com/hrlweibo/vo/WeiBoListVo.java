package com.hrlweibo.vo;

import java.util.Date;
import java.util.List;

public class WeiBoListVo {

    private String weiboId;
    private String categoryId;
    private String content;
    private String vediourl;
    private String tail;
    private Date createtime;
    private int zanStatus;//是否点赞 0没有 1点赞了
    private Long zhuanfaNum;
    private Long likeNum;
    private Long commentNum;
    private WeiBoUserVo  userInfo;
    private List<String>  picurl;
    private boolean  isContainZf;
    private String zfContent;//转发的内容
    private String zfNick;//转发的昵称
    private String zfUserId;//转发的昵称
    private List<String>  zfPicurl;//转发的图片
    private String zfWeiBoId;//转发的微博id
    private String zfVedioUrl;//转发的视频

    public String getWeiboId() {
        return weiboId;
    }

    public void setWeiboId(String weiboId) {
        this.weiboId = weiboId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public WeiBoUserVo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(WeiBoUserVo userInfo) {
        this.userInfo = userInfo;
    }

    public List<String> getPicurl() {
        return picurl;
    }

    public void setPicurl(List<String> picurl) {
        this.picurl = picurl;
    }

    public String getZfContent() {
        return zfContent;
    }

    public void setZfContent(String zfContent) {
        this.zfContent = zfContent;
    }

    public String getZfNick() {
        return zfNick;
    }

    public void setZfNick(String zfNick) {
        this.zfNick = zfNick;
    }

    public String getZfUserId() {
        return zfUserId;
    }

    public void setZfUserId(String zfUserId) {
        this.zfUserId = zfUserId;
    }

    public List<String> getZfPicurl() {
        return zfPicurl;
    }

    public void setZfPicurl(List<String> zfPicurl) {
        this.zfPicurl = zfPicurl;
    }

    public String getZfWeiBoId() {
        return zfWeiBoId;
    }

    public void setZfWeiBoId(String zfWeiBoId) {
        this.zfWeiBoId = zfWeiBoId;
    }


    public boolean isContainZf() {
        return isContainZf;
    }

    public void setContainZf(boolean containZf) {
        isContainZf = containZf;
    }

    public String getVediourl() {
        return vediourl;
    }

    public void setVediourl(String vediourl) {
        this.vediourl = vediourl;
    }

    public String getTail() {
        return tail;
    }

    public void setTail(String tail) {
        this.tail = tail;
    }


    public String getZfVedioUrl() {
        return zfVedioUrl;
    }

    public void setZfVedioUrl(String zfVedioUrl) {
        this.zfVedioUrl = zfVedioUrl;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public int getZanStatus() {
        return zanStatus;
    }

    public void setZanStatus(int zanStatus) {
        this.zanStatus = zanStatus;
    }

    public Long getZhuanfaNum() {
        return zhuanfaNum;
    }

    public void setZhuanfaNum(Long zhuanfaNum) {
        this.zhuanfaNum = zhuanfaNum;
    }

    public Long getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(Long likeNum) {
        this.likeNum = likeNum;
    }

    public Long getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Long commentNum) {
        this.commentNum = commentNum;
    }
}
