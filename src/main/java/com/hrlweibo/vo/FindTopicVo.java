package com.hrlweibo.vo;

import java.util.ArrayList;

public class FindTopicVo {


    private    ArrayList<TopicVo> topic1;


    private   ArrayList<TopicVo> topic2;


    private   ArrayList<TopicVo> topic3;


    private ArrayList<WeiBoListVo> topiclist;


    public ArrayList<TopicVo> getTopic1() {
        return topic1;
    }

    public void setTopic1(ArrayList<TopicVo> topic1) {
        this.topic1 = topic1;
    }

    public ArrayList<TopicVo> getTopic2() {
        return topic2;
    }

    public void setTopic2(ArrayList<TopicVo> topic2) {
        this.topic2 = topic2;
    }

    public ArrayList<TopicVo> getTopic3() {
        return topic3;
    }

    public void setTopic3(ArrayList<TopicVo> topic3) {
        this.topic3 = topic3;
    }

    public ArrayList<WeiBoListVo> getTopiclist() {
        return topiclist;
    }

    public void setTopiclist(ArrayList<WeiBoListVo> topiclist) {
        this.topiclist = topiclist;
    }
}
