package com.hrlweibo.vo;

import java.util.Date;

public class UserVo {

    private String id;



    private String nick;

    private String headurl;

    private String decs;

    private String gender;

    private String followCount;

    private String fanCount;


    private Integer ismember;//是否是会员 0不是 1是

    private Integer isvertify;//是否认证 0没认证 1已认证


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }



    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getHeadurl() {
        return headurl;
    }

    public void setHeadurl(String headurl) {
        this.headurl = headurl;
    }

    public String getDecs() {
        return decs;
    }

    public void setDecs(String decs) {
        this.decs = decs;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFollowCount() {
        return followCount;
    }

    public void setFollowCount(String followCount) {
        this.followCount = followCount;
    }

    public String getFanCount() {
        return fanCount;
    }

    public void setFanCount(String fanCount) {
        this.fanCount = fanCount;
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
