package com.hrlweibo.vo;

public class WeiBoUserVo {

    private Integer id;
    private String nick;
    private String headurl;
    private String decs;
    private Integer ismember;
    private Integer isvertify;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    @Override
    public String toString() {
        return "WeiBoUserVo{" +
                "id=" + id +
                ", nick='" + nick + '\'' +
                ", headurl='" + headurl + '\'' +
                ", decs='" + decs + '\'' +
                '}';
    }
}
