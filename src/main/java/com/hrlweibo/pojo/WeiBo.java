package com.hrlweibo.pojo;

import java.io.Serializable;
import java.util.Date;

public class WeiBo implements Serializable {
    private Long weiboId;

    private Long userId;

    private String content;

    private Long zhuanfaNum;

    private Long likeNum;

    private Long commentNum;

    private Long catId;

    private String vediourl;
    private String tail;

    private Integer isZhunfa;

    private Long zfWeiboid;

    private String pic1;

    private String pic2;

    private String pic3;

    private String pic4;

    private String pic5;

    private String pic6;

    private String pic7;

    private String pic8;

    private String pic9;


    private Date createTime;

    public WeiBo(Long weiboId, Long userId, String content, Long zhuanfaNum, Long likeNum, Long commentNum, Long catId,
                   String vediourl,String tail,
                 Integer isZhunfa, Long zfWeiboid, String pic1, String pic2, String pic3, String pic4, String pic5, String pic6, String pic7, String pic8, String pic9,  Date createtime) {
        this.weiboId = weiboId;
        this.userId = userId;
        this.content = content;
        this.zhuanfaNum = zhuanfaNum;
        this.likeNum = likeNum;
        this.commentNum = commentNum;
        this.catId = catId;
        this.isZhunfa = isZhunfa;
        this.vediourl = vediourl;
        this.tail = tail;
        this.zfWeiboid = zfWeiboid;
        this.pic1 = pic1;
        this.pic2 = pic2;
        this.pic3 = pic3;
        this.pic4 = pic4;
        this.pic5 = pic5;
        this.pic6 = pic6;
        this.pic7 = pic7;
        this.pic8 = pic8;
        this.pic9 = pic9;
        this.createTime = createtime;

    }

    public WeiBo() {
        super();
    }

    public Long getWeiboId() {
        return weiboId;
    }

    public void setWeiboId(Long weiboId) {
        this.weiboId = weiboId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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

    public Long getCatId() {
        return catId;
    }

    public void setCatId(Long catId) {
        this.catId = catId;
    }

    public Integer getIsZhunfa() {
        return isZhunfa;
    }

    public void setIsZhunfa(Integer isZhunfa) {
        this.isZhunfa = isZhunfa;
    }

    public Long getZfWeiboid() {
        return zfWeiboid;
    }

    public void setZfWeiboid(Long zfWeiboid) {
        this.zfWeiboid = zfWeiboid;
    }

    public String getPic1() {
        return pic1;
    }

    public void setPic1(String pic1) {
        this.pic1 = pic1 == null ? null : pic1.trim();
    }

    public String getPic2() {
        return pic2;
    }

    public void setPic2(String pic2) {
        this.pic2 = pic2 == null ? null : pic2.trim();
    }

    public String getPic3() {
        return pic3;
    }

    public void setPic3(String pic3) {
        this.pic3 = pic3 == null ? null : pic3.trim();
    }

    public String getPic4() {
        return pic4;
    }

    public void setPic4(String pic4) {
        this.pic4 = pic4 == null ? null : pic4.trim();
    }

    public String getPic5() {
        return pic5;
    }

    public void setPic5(String pic5) {
        this.pic5 = pic5 == null ? null : pic5.trim();
    }

    public String getPic6() {
        return pic6;
    }

    public void setPic6(String pic6) {
        this.pic6 = pic6 == null ? null : pic6.trim();
    }

    public String getPic7() {
        return pic7;
    }

    public void setPic7(String pic7) {
        this.pic7 = pic7 == null ? null : pic7.trim();
    }

    public String getPic8() {
        return pic8;
    }

    public void setPic8(String pic8) {
        this.pic8 = pic8 == null ? null : pic8.trim();
    }

    public String getPic9() {
        return pic9;
    }

    public void setPic9(String pic9) {
        this.pic9 = pic9 == null ? null : pic9.trim();
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}