package com.hrlweibo.pojo;

import java.util.Date;

public class CommentReply {
    private Long crid;

    private Integer commentid;

    private Long cruserid;

    private String crcontent;

    private Integer crzannum;

    private Date crcreatetime;

    public CommentReply(Long crid, Integer commentid, Long cruserid, String crcontent, Integer crzannum, Date crcreatetime) {
        this.crid = crid;
        this.commentid = commentid;
        this.cruserid = cruserid;
        this.crcontent = crcontent;
        this.crzannum = crzannum;
        this.crcreatetime = crcreatetime;
    }

    public CommentReply() {
        super();
    }

    public Long getCrid() {
        return crid;
    }

    public void setCrid(Long crid) {
        this.crid = crid;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Long getCruserid() {
        return cruserid;
    }

    public void setCruserid(Long cruserid) {
        this.cruserid = cruserid;
    }

    public String getCrcontent() {
        return crcontent;
    }

    public void setCrcontent(String crcontent) {
        this.crcontent = crcontent == null ? null : crcontent.trim();
    }

    public Integer getCrzannum() {
        return crzannum;
    }

    public void setCrzannum(Integer crzannum) {
        this.crzannum = crzannum;
    }

    public Date getCrcreatetime() {
        return crcreatetime;
    }

    public void setCrcreatetime(Date crcreatetime) {
        this.crcreatetime = crcreatetime;
    }
}