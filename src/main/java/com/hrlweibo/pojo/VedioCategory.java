package com.hrlweibo.pojo;

public class VedioCategory {
    private Integer id;

    private String cname;

    public VedioCategory(Integer id, String cname) {
        this.id = id;
        this.cname = cname;
    }

    public VedioCategory() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }
}