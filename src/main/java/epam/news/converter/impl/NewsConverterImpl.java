package epam.news.converter.impl;

import epam.news.converter.NewsConverter;
import epam.news.model.dto.CommentDTO;
import epam.news.model.dto.NewsDTO;
import epam.news.model.entity.Comment;
import epam.news.model.entity.News;

import javax.ejb.Stateless;

@Stateless
public class NewsConverterImpl implements NewsConverter {
    private CommentConverterImpl commentImpl = new CommentConverterImpl();


    @Override
    public News DTOToEntity(NewsDTO newsDTO) {
        News news = new News();
        news.setContent(newsDTO.getContent());
        news.setBrief(newsDTO.getBrief());
        news.setNewsId(newsDTO.getNewsId());
        news.setTitle(newsDTO.getTitle());
        for (CommentDTO commentDTO : newsDTO.getCommentList()) {
            news.getCommentList().add(commentImpl.DTOToEntity(commentDTO));
        }
        return news;
    }

    @Override
    public NewsDTO entityToDTO(News news) {
        NewsDTO newsDTO = new NewsDTO();
        newsDTO.setBrief(news.getBrief());
        newsDTO.setContent(news.getContent());
        newsDTO.setNewsId(news.getNewsId());
        newsDTO.setTitle(news.getTitle());
        for (Comment comment : news.getCommentList()) {
            CommentDTO commentDTO = commentImpl.entityToDTO(comment);
            newsDTO.getCommentList().add(commentDTO);
        }
        return newsDTO;
    }

}
