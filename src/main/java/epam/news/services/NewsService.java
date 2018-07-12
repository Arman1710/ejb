package epam.news.services;

import epam.news.converter.CommentConverter;
import epam.news.converter.NewsConverter;
import epam.news.converter.impl.CommentConverterImpl;
import epam.news.converter.impl.NewsConverterImpl;
import epam.news.dao.NewsDAO;

import epam.news.model.dto.CommentDTO;
import epam.news.model.dto.NewsDTO;
import epam.news.model.entity.Comment;
import epam.news.model.entity.News;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ejb.Local;
import javax.ejb.Stateless;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Stateless
@Local
public class NewsService {

    @EJB
    private NewsDAO newsDAO;

    @EJB
    private NewsConverter newsConverter;

    @EJB
    private CommentConverter commentConverter;

    private final static Logger LOGGER = Logger.getLogger(NewsService.class);


    public List<News> showAllNews() {
        LOGGER.info("show all news");
        return newsDAO.read();

    }

    public NewsDTO selectedNews(Long newsId) {
        LOGGER.info("selected news :" + newsId);
        NewsDTO newsDTO = newsConverter.entityToDTO(newsDAO.findById(newsId));
        LOGGER.info("News :" + newsId + " is selected");
        return newsDTO;
    }


    public void editNews(NewsDTO newsDTO, Long newsId) {
        LOGGER.info("Updating news :" + newsId);
        News news = newsDAO.findById(newsId);
        news.setContent(newsDTO.getContent());
        news.setBrief(newsDTO.getBrief());
        news.setTitle(newsDTO.getTitle());
        newsDAO.update(news);
        LOGGER.info("News :" + newsId + " is updated");
    }

    public void addNews(NewsDTO newsDTO) {
        News news = newsConverter.DTOToEntity(newsDTO);
        newsDAO.create(news);
        LOGGER.info("News :" + news.getTitle() + "is created");
    }

    public void addComment(Long newsId, CommentDTO commentDTO) {
        LOGGER.info("Creating comment :" + newsId);
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        commentDTO.setDateCreated(new Date());
        Comment comment = commentConverter.DTOToEntity(commentDTO);

        News news = newsDAO.findById(newsId);
        comment.setNewsId(news.getNewsId());
//        comment.setAuthor(auth.getName());

        news.getCommentList().add(comment);
        newsDAO.update(news);
        LOGGER.info("Comments :" + news + "is created");
    }

    public void deleteNews(Long newsId) {
        LOGGER.info("delete news :" + newsId);

        newsDAO.delete(newsDAO.findById(newsId));

        LOGGER.info("News :" + newsId + " is deleted");
    }

    public void deleteComment(final Long newsId, final Long commentId) {
        LOGGER.info("delete news :" + commentId);
        final News news = newsDAO.findById(newsId);
        final Iterator<Comment> itr = news.getCommentList().iterator();

        while (itr.hasNext()) {
            Comment comment = itr.next();
            if (comment.getCommentId() == commentId) {
                itr.remove();
            }
        }
        newsDAO.update(news);
        LOGGER.info("News :" + commentId + " is deleted");
    }

}
