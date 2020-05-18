package com.hrlweibo.pojo;

import java.util.Date;

public class Video {
    private Integer id;

    private String coverimg;

    private Integer videotime;

    private Integer playnum;

    private Integer userid;

    private String tag;

    private String recommengstr;

    private Integer type;

    private String videourl;

    private Integer zannum;

    private String introduce;

    private Date createtime;

    public Video(Integer id, String coverimg, Integer videotime, Integer playnum, Integer userid, String tag, String recommengstr, Integer type, String videourl, Integer zannum, String introduce, Date createtime) {
        this.id = id;
        this.coverimg = coverimg;
        this.videotime = videotime;
        this.playnum = playnum;
        this.userid = userid;
        this.tag = tag;
        this.recommengstr = recommengstr;
        this.type = type;
        this.videourl = videourl;
        this.zannum = zannum;
        this.introduce = introduce;
        this.createtime = createtime;
    }

    public Video() {
        super();
    }

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
        this.coverimg = coverimg == null ? null : coverimg.trim();
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
        this.tag = tag == null ? null : tag.trim();
    }

    public String getRecommengstr() {
        return recommengstr;
    }

    public void setRecommengstr(String recommengstr) {
        this.recommengstr = recommengstr == null ? null : recommengstr.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getVideourl() {
        return videourl;
    }

    public void setVideourl(String videourl) {
        this.videourl = videourl == null ? null : videourl.trim();
    }

    public Integer getZannum() {
        return zannum;
    }

    public void setZannum(Integer zannum) {
        this.zannum = zannum;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}