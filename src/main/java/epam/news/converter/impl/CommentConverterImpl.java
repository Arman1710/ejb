package epam.news.converter.impl;

import epam.news.converter.CommentConverter;
import epam.news.model.dto.CommentDTO;
import epam.news.model.entity.Comment;

import javax.ejb.Stateless;

@Stateless
public class CommentConverterImpl implements CommentConverter {



    @Override
    public Comment DTOToEntity(CommentDTO commentDTO) {
        Comment comment = new Comment();
        comment.setNewsId(commentDTO.getNewsId());
        comment.setAuthor(commentDTO.getAuthor());
        comment.setDateCreated(commentDTO.getDateCreated());
        comment.setDescription(commentDTO.getDescription());
        comment.setCommentId(commentDTO.getCommentId());
        return comment;
    }

    @Override
    public CommentDTO entityToDTO(Comment comment) {
        CommentDTO commentDTO = new CommentDTO();
        commentDTO.setAuthor(comment.getAuthor());
        commentDTO.setDescription(comment.getDescription());
        commentDTO.setDateCreated(comment.getDateCreated());
        commentDTO.setNewsId(comment.getNewsId());
        commentDTO.setCommentId(comment.getCommentId());
        return commentDTO;
    }

}
