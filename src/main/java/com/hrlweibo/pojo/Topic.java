package com.hrlweibo.pojo;

public class Topic {
    private Long topicid;

    private Integer topictype;

    private String topicdesc;

    private Long topicread;

    private Long topicdiscuss;

    private String topichost;

    private Integer topicattitude;

    private String topicimg;

    private String topicintro;


    public Topic(Long topicid, Integer topictype, String topicdesc, Long topicread, Long topicdiscuss, String topichost, Integer topicattitude, String topicimg,String topicintro) {
        this.topicid = topicid;
        this.topictype = topictype;
        this.topicdesc = topicdesc;
        this.topicread = topicread;
        this.topicdiscuss = topicdiscuss;
        this.topichost = topichost;
        this.topicattitude = topicattitude;
        this.topicimg = topicimg;
        this.topicintro = topicintro;

    }

    public Topic() {
        super();
    }

    public Long getTopicid() {
        return topicid;
    }

    public void setTopicid(Long topicid) {
        this.topicid = topicid;
    }

    public Integer getTopictype() {
        return topictype;
    }

    public void setTopictype(Integer topictype) {
        this.topictype = topictype;
    }

    public String getTopicdesc() {
        return topicdesc;
    }

    public void setTopicdesc(String topicdesc) {
        this.topicdesc = topicdesc == null ? null : topicdesc.trim();
    }

    public Long getTopicread() {
        return topicread;
    }

    public void setTopicread(Long topicread) {
        this.topicread = topicread;
    }

    public Long getTopicdiscuss() {
        return topicdiscuss;
    }

    public void setTopicdiscuss(Long topicdiscuss) {
        this.topicdiscuss = topicdiscuss;
    }

    public String getTopichost() {
        return topichost;
    }

    public void setTopichost(String topichost) {
        this.topichost = topichost == null ? null : topichost.trim();
    }

    public Integer getTopicattitude() {
        return topicattitude;
    }

    public void setTopicattitude(Integer topicattitude) {
        this.topicattitude = topicattitude;
    }

    public String getTopicimg() {
        return topicimg;
    }

    public void setTopicimg(String topicimg) {
        this.topicimg = topicimg == null ? null : topicimg.trim();
    }


    public String getTopicintro() {
        return topicintro;
    }

    public void setTopicintro(String topicintro) {
        this.topicintro = topicintro;
    }
}