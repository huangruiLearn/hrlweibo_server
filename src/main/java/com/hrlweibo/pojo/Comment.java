package com.hrlweibo.pojo;

import java.util.Date;

public class Comment {
    private Long commentid;

    private Long weiboid;

    private Long userid;

    private String content;

    private Integer zannum;

    private Date createtime;

    private String tail;

    public Comment() {
    }

    public Comment(Long commentid, Long weiboid, Long userid, String content, Integer zannum, Date createtime, String tail) {
        this.commentid = commentid;
        this.weiboid = weiboid;
        this.userid = userid;
        this.content = content;
        this.zannum = zannum;
        this.createtime = createtime;
        this.tail = tail;
    }

    public Long getCommentid() {
        return commentid;
    }

    public void setCommentid(Long commentid) {
        this.commentid = commentid;
    }

    public Long getWeiboid() {
        return weiboid;
    }

    public void setWeiboid(Long weiboid) {
        this.weiboid = weiboid;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getZannum() {
        return zannum;
    }

    public void setZannum(Integer zannum) {
        this.zannum = zannum;
    }


    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getTail() {
        return tail;
    }

    public void setTail(String tail) {
        this.tail = tail;
    }
}