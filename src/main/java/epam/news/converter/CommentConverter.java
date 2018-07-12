package epam.news.converter;

import epam.news.model.dto.CommentDTO;
import epam.news.model.entity.Comment;

public interface CommentConverter {

    Comment DTOToEntity(CommentDTO commentDTO);

    CommentDTO entityToDTO(Comment comment);
}
