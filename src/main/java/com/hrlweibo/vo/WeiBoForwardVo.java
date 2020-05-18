package com.hrlweibo.vo;

import com.hrlweibo.pojo.CommentReply;

import java.util.Date;
import java.util.List;

public class WeiBoForwardVo {

    private String zfid;


    private String fromuid;

    private String fromuname;

    private String fromhead;

     private Integer fromuserismember;//是否是会员 0不是 1是

    private Integer fromuserisvertify;//是否认证 0没认证 1已认证

    private String content;

    private Date createtime;


    public String getZfid() {
        return zfid;
    }

    public void setZfid(String zfid) {
        this.zfid = zfid;
    }

    public String getFromuid() {
        return fromuid;
    }

    public void setFromuid(String fromuid) {
        this.fromuid = fromuid;
    }

    public String getFromuname() {
        return fromuname;
    }

    public void setFromuname(String fromuname) {
        this.fromuname = fromuname;
    }

    public String getFromhead() {
        return fromhead;
    }

    public void setFromhead(String fromhead) {
        this.fromhead = fromhead;
    }

    public Integer getFromuserismember() {
        return fromuserismember;
    }

    public void setFromuserismember(Integer fromuserismember) {
        this.fromuserismember = fromuserismember;
    }

    public Integer getFromuserisvertify() {
        return fromuserisvertify;
    }

    public void setFromuserisvertify(Integer fromuserisvertify) {
        this.fromuserisvertify = fromuserisvertify;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}
