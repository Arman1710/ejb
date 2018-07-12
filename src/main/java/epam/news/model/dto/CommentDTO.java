package epam.news.model.dto;

import java.util.Date;

public class CommentDTO {
    private String author;
    private String description;
    private Date dateCreated;
    private Long newsId;
    private Long commentId;

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

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    @Override
    public String toString() {
        return "CommentDTO{" +
                "author='" + author + '\'' +
                ", description='" + description + '\'' +
                ", dateCreated=" + dateCreated +
                ", newsId=" + newsId +
                ", commentId=" + commentId +
                '}';
    }
}
