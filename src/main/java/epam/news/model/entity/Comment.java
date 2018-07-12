package epam.news.model.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "comments")
public class Comment extends Basic {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column (name = "commentId", nullable = false, updatable = false)
    private Long commentId;

    @Column (nullable = false)
    private String author;

    @Column (nullable = false)
    private String description;

    @Column (nullable = false)
    private Date dateCreated;

    @Column (nullable = false)
    private Long newsId;

    @ManyToOne
    @JoinColumn (name = "newsId", insertable = false, updatable = false)
    private News news;

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Long getNewsId() {
        return newsId;
    }

    public void setNewsId(Long newsId) {
        this.newsId = newsId;
    }

}
