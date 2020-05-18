package com.hrlweibo.vo;

import com.hrlweibo.util.TxFileUtil;

public class FindHotSearchVo {


    private String hotid;

    private String hotdesc;

    private String hottype;

    private String hotread;

    private int hotattitude;

    private String hotdiscuss;

    private String hothost;

    private String recommendcoverimg;


    public String getHotid() {
        return hotid;
    }

    public void setHotid(String hotid) {
        this.hotid = hotid;
    }

    public String getHotdesc() {
        return hotdesc;
    }

    public void setHotdesc(String hotdesc) {
        this.hotdesc = hotdesc;
    }

    public String getHottype() {
        return hottype;
    }

    public void setHottype(String hottype) {
        this.hottype = hottype;
    }

    public String getHotread() {
        return hotread;
    }

    public void setHotread(String hotread) {
        this.hotread = hotread;
    }

    public int getHotattitude() {
        return hotattitude;
    }

    public void setHotattitude(int hotattitude) {
        this.hotattitude = hotattitude;
    }

    public String getHotdiscuss() {
        return hotdiscuss;
    }

    public void setHotdiscuss(String hotdiscuss) {
        this.hotdiscuss = hotdiscuss;
    }

    public String getHothost() {
        return hothost;
    }

    public void setHothost(String hothost) {
        this.hothost = hothost;
    }

    public String getRecommendcoverimg() {
        return TxFileUtil.baseTxUrl+recommendcoverimg;
    }

    public void setRecommendcoverimg(String recommendcoverimg) {
        this.recommendcoverimg = recommendcoverimg;
    }
}
