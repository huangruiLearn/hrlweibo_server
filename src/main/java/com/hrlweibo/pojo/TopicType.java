package com.hrlweibo.pojo;

public class TopicType {
    private Long id;

    private String name;

    public TopicType(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public TopicType() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}