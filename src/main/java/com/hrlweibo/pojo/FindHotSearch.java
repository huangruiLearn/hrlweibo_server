package com.hrlweibo.pojo;

public class FindHotSearch {
    private Long hotid;

    private String hotdesc;

    private Integer hottype;

    private Long hotread;

    private String hotattitude;

    private Long hotdiscuss;

    private String hothost;

    private Boolean isrecommend;

    private Integer recommendpage;

    private Integer recommendpagepostion;

    private String recommendcoverimg;

    public FindHotSearch(Long hotid, String hotdesc, Integer hottype, Long hotread, String hotattitude, Long hotdiscuss, String hothost, Boolean isrecommend, Integer recommendpage, Integer recommendpagepostion, String recommendcoverimg) {
        this.hotid = hotid;
        this.hotdesc = hotdesc;
        this.hottype = hottype;
        this.hotread = hotread;
        this.hotattitude = hotattitude;
        this.hotdiscuss = hotdiscuss;
        this.hothost = hothost;
        this.isrecommend = isrecommend;
        this.recommendpage = recommendpage;
        this.recommendpagepostion = recommendpagepostion;
        this.recommendcoverimg = recommendcoverimg;
    }

    public FindHotSearch() {
        super();
    }

    public Long getHotid() {
        return hotid;
    }

    public void setHotid(Long hotid) {
        this.hotid = hotid;
    }

    public String getHotdesc() {
        return hotdesc;
    }

    public void setHotdesc(String hotdesc) {
        this.hotdesc = hotdesc == null ? null : hotdesc.trim();
    }

    public Integer getHottype() {
        return hottype;
    }

    public void setHottype(Integer hottype) {
        this.hottype = hottype;
    }

    public Long getHotread() {
        return hotread;
    }

    public void setHotread(Long hotread) {
        this.hotread = hotread;
    }

    public String getHotattitude() {
        return hotattitude;
    }

    public void setHotattitude(String hotattitude) {
        this.hotattitude = hotattitude == null ? null : hotattitude.trim();
    }

    public Long getHotdiscuss() {
        return hotdiscuss;
    }

    public void setHotdiscuss(Long hotdiscuss) {
        this.hotdiscuss = hotdiscuss;
    }

    public String getHothost() {
        return hothost;
    }

    public void setHothost(String hothost) {
        this.hothost = hothost == null ? null : hothost.trim();
    }

    public Boolean getIsrecommend() {
        return isrecommend;
    }

    public void setIsrecommend(Boolean isrecommend) {
        this.isrecommend = isrecommend;
    }

    public Integer getRecommendpage() {
        return recommendpage;
    }

    public void setRecommendpage(Integer recommendpage) {
        this.recommendpage = recommendpage;
    }

    public Integer getRecommendpagepostion() {
        return recommendpagepostion;
    }

    public void setRecommendpagepostion(Integer recommendpagepostion) {
        this.recommendpagepostion = recommendpagepostion;
    }

    public String getRecommendcoverimg() {
        return recommendcoverimg;
    }

    public void setRecommendcoverimg(String recommendcoverimg) {
        this.recommendcoverimg = recommendcoverimg == null ? null : recommendcoverimg.trim();
    }
}