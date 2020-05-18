package com.hrlweibo.pojo;

import com.hrlweibo.util.TxFileUtil;

public class FindKind {
    private Integer id;

    private String name;

    private String img;

    public FindKind(Integer id, String name, String img) {
        this.id = id;
        this.name = name;
        this.img = img;
    }

    public FindKind() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getImg() {
        return TxFileUtil.baseTxUrl+img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }
}