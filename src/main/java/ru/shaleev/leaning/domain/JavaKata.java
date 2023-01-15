package ru.shaleev.leaning.domain;

import javax.persistence.*;

@Entity
public class JavaKata {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String text;
    private String tag;
    private String title;

    public JavaKata() {
    }

    public JavaKata(String text, String tag, String title) {
        this.text = text;
        this.tag = tag;

        this.title = title;
    }



    public void setText(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }


    public String getTitle() {
        return title; }

    public void setTitle(String title) {
        this.title = title; }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }
}
