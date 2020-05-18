package com.hrlweibo.pojo;

import java.util.Date;

public class UserFollow {
    private Long id;

    private Long focusUserId;

    private Long uid;

    private Date createTime;

    public UserFollow(Long id, Long focusUserId, Long uid, Date createTime) {
        this.id = id;
        this.focusUserId = focusUserId;
        this.uid = uid;
        this.createTime = createTime;
    }

    public UserFollow() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFocusUserId() {
        return focusUserId;
    }

    public void setFocusUserId(Long focusUserId) {
        this.focusUserId = focusUserId;
    }

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}