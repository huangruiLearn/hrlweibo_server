package com.hrlweibo.vo;

import java.util.ArrayList;

public class WeiBoAtUser {


    private ArrayList<UserVo>  hotusers;

    private ArrayList<UserVo>  normalusers;


    public ArrayList<UserVo> getHotusers() {
        return hotusers;
    }

    public void setHotusers(ArrayList<UserVo> hotusers) {
        this.hotusers = hotusers;
    }

    public ArrayList<UserVo> getNormalusers() {
        return normalusers;
    }

    public void setNormalusers(ArrayList<UserVo> normalusers) {
        this.normalusers = normalusers;
    }
}
