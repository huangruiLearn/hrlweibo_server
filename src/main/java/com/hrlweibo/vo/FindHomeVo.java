package com.hrlweibo.vo;

import com.hrlweibo.pojo.FindHotSearch;
import com.hrlweibo.pojo.FindKind;

import java.util.ArrayList;

public class FindHomeVo {

    private ArrayList<FindKind> findkind;

    private ArrayList<FindHotSearchVo> findhottop;

    private FindHomeCenterHotVo  findhotcenter;


    private  FindTopicVo findtopic;


    private ArrayList<WeiBoListVo> findhot;

    private ArrayList<WeiBoListVo> findlocal;


    private ArrayList<WeiBoListVo> findsupertopic;

    public ArrayList<WeiBoListVo> getFindhot() {
        return findhot;
    }

    public void setFindhot(ArrayList<WeiBoListVo> findhot) {
        this.findhot = findhot;
    }

    public ArrayList<WeiBoListVo> getFindlocal() {
        return findlocal;
    }

    public void setFindlocal(ArrayList<WeiBoListVo> findlocal) {
        this.findlocal = findlocal;
    }

    public ArrayList<FindKind> getFindkind() {
        return findkind;
    }

    public void setFindkind(ArrayList<FindKind> findkind) {
        this.findkind = findkind;
    }


    public ArrayList<FindHotSearchVo> getFindhottop() {
        return findhottop;
    }

    public void setFindhottop(ArrayList<FindHotSearchVo> findhottop) {
        this.findhottop = findhottop;
    }

    public FindHomeCenterHotVo getFindhotcenter() {
        return findhotcenter;
    }

    public void setFindhotcenter(FindHomeCenterHotVo findhotcenter) {
        this.findhotcenter = findhotcenter;
    }


    public FindTopicVo getFindtopic() {
        return findtopic;
    }

    public void setFindtopic(FindTopicVo findtopic) {
        this.findtopic = findtopic;
    }

    public ArrayList<WeiBoListVo> getFindsupertopic() {
        return findsupertopic;
    }

    public void setFindsupertopic(ArrayList<WeiBoListVo> findsupertopic) {
        this.findsupertopic = findsupertopic;
    }
}
