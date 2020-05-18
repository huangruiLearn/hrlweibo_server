package com.hrlweibo.pojo;

import java.util.Date;

public class Forward {
    private Long forwardid;

    private Long userid;

    private String content;

    private Date createtime;

    public Forward(Long forwardid, Long userid, String content, Date createtime) {
        this.forwardid = forwardid;
        this.userid = userid;
        this.content = content;
        this.createtime = createtime;
    }

    public Forward() {
        super();
    }

    public Long getForwardid() {
        return forwardid;
    }

    public void setForwardid(Long forwardid) {
        this.forwardid = forwardid;
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
        this.content = content == null ? null : content.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}