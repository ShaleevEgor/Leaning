package ru.shaleev.leaning.domain;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
@Transactional
@Entity
public class CplusKata {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    @Column(length = 2048)
    private String description;
    @Column(length = 2048)
    private String tag;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;



    public CplusKata() {
    }

    public CplusKata(String description, String tag, User user) {
        this.tag = tag;
        this.author = user;
        this.description = description;
    }


    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

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

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
