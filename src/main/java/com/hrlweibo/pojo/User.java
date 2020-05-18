package com.hrlweibo.pojo;

import java.util.Date;

public class User {
    private Integer id;

    private String username;

    private String password;

    private String nick;

    private String headurl;

    private String decs;



    private String gender;

    private Integer ismember;//是否是会员 0不是 1是

    private Integer isvertify;//是否认证 0没认证 1已认证

    private Long followCount;

    private Long fanCount;

    private Date createTime;




    public User(Integer id, String username, String password, String nick, String headurl, String decs,String gender,Integer ismember,Integer isvertify,  Long followCount, Long fanCount, Date createTime) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.nick = nick;
        this.headurl = headurl;
        this.decs = decs;
        this.gender = gender;
        this.followCount = followCount;
        this.fanCount = fanCount;
        this.createTime = createTime;
        this.ismember = ismember;
         this.isvertify = isvertify;

    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick == null ? null : nick.trim();
    }

    public String getHeadurl() {
        return headurl;
    }

    public void setHeadurl(String headurl) {
        this.headurl = headurl == null ? null : headurl.trim();
    }

    public String getDecs() {
        return decs;
    }

    public void setDecs(String decs) {
        this.decs = decs == null ? null : decs.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Long getFollowCount() {
        return followCount;
    }

    public void setFollowCount(Long followCount) {
        this.followCount = followCount;
    }

    public Long getFanCount() {
        return fanCount;
    }

    public void setFanCount(Long fanCount) {
        this.fanCount = fanCount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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
}