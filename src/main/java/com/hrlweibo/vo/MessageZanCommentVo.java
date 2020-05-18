package com.hrlweibo.vo;

import java.util.Date;

public class MessageZanCommentVo {

    private String userid;
    private String username;
    private String userheadurl;
    private Date createtime;
    private String content;
    private String tail;
    private String weiboid;
    private String weibcontent;
    private String weibousername;
    private String weibopicurl;
    private Integer ismember;
    private Integer isvertify;


    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTail() {
        return tail;
    }

    public void setTail(String tail) {
        this.tail = tail;
    }

    public String getWeiboid() {
        return weiboid;
    }

    public void setWeiboid(String weiboid) {
        this.weiboid = weiboid;
    }

    public String getWeibcontent() {
        return weibcontent;
    }

    public void setWeibcontent(String weibcontent) {
        this.weibcontent = weibcontent;
    }

    public String getWeibopicurl() {
        return weibopicurl;
    }

    public void setWeibopicurl(String weibopicurl) {
        this.weibopicurl = weibopicurl;
    }

    public Integer getIsmember() {
        return ismember;
    }

    public void setIsmember(Integer ismember) {
        this.ismember = ismember;
    }

    public Integer getIsvertify() {
        return isvertify;
    }

    public void setIsvertify(Integer isvertify) {
        this.isvertify = isvertify;
    }

    public String getWeibousername() {
        return weibousername;
    }

    public void setWeibousername(String weibousername) {
        this.weibousername = weibousername;
    }

    public String getUserheadurl() {
        return userheadurl;
    }

    public void setUserheadurl(String userheadurl) {
        this.userheadurl = userheadurl;
    }
}
