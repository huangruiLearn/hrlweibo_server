package com.hrlweibo.vo;

import java.util.Date;

public class VideoVo {
    private Integer id;

    private String coverimg;

    private Integer videotime;

    private Integer playnum;

    private Integer userid;

    private String tag;

    private String recommengstr;

    private Integer type;

    private String introduce;

    private Date createtime;

    private String username;
    private String userheadurl;
    private int userisvertify;
    private int zannum;
    private String videourl;
    private Long userfancount;
    private String userdesc;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCoverimg() {
        return coverimg;
    }

    public void setCoverimg(String coverimg) {
        this.coverimg = coverimg;
    }

    public Integer getVideotime() {
        return videotime;
    }

    public void setVideotime(Integer videotime) {
        this.videotime = videotime;
    }

    public Integer getPlaynum() {
        return playnum;
    }

    public void setPlaynum(Integer playnum) {
        this.playnum = playnum;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getRecommengstr() {
        return recommengstr;
    }

    public void setRecommengstr(String recommengstr) {
        this.recommengstr = recommengstr;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserheadurl() {
        return userheadurl;
    }

    public void setUserheadurl(String userheadurl) {
        this.userheadurl = userheadurl;
    }

    public int getUserisvertify() {
        return userisvertify;
    }

    public void setUserisvertify(int userisvertify) {
        this.userisvertify = userisvertify;
    }

    public int getZannum() {
        return zannum;
    }

    public void setZannum(int zannum) {
        this.zannum = zannum;
    }

    public String getVideourl() {
        return videourl;
    }

    public void setVideourl(String videourl) {
        this.videourl = videourl;
    }


    public Long getUserfancount() {
        return userfancount;
    }

    public void setUserfancount(Long userfancount) {
        this.userfancount = userfancount;
    }

    public String getUserdesc() {
        return userdesc;
    }

    public void setUserdesc(String userdesc) {
        this.userdesc = userdesc;
    }
}