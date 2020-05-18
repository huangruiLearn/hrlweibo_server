package com.hrlweibo.pojo;

import java.util.Date;

public class Zan {
    private Long zanid;

    private Long weiboid;

    private Long userid;

    private String tail;

    private Date createtime;

    public Zan(Long zanid, Long weiboid, Long userid, String tail, Date createtime) {
        this.zanid = zanid;
        this.weiboid = weiboid;
        this.userid = userid;
        this.tail = tail;
        this.createtime = createtime;
    }

    public Zan() {
        super();
    }

    public Long getZanid() {
        return zanid;
    }

    public void setZanid(Long zanid) {
        this.zanid = zanid;
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

    public String getTail() {
        return tail;
    }

    public void setTail(String tail) {
        this.tail = tail;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}