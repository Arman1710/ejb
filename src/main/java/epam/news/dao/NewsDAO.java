package epam.news.dao;


import epam.news.model.entity.News;


public interface NewsDAO extends BasicDAO<News> {
    News findById(Long newsId);
}
