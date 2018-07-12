package epam.news.dao.impl;

import epam.news.dao.NewsDAO;
import epam.news.model.entity.News;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.ejb.Stateless;
import java.util.List;

@Stateless
public class NewsDAOImpl implements NewsDAO {


    private SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    @Override
    public List<News> read() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        List newsList = session.createQuery("FROM News order by newsId DESC").list();

        session.getTransaction().commit();
        session.close();

        return newsList;

    }

    @Override
    public void update(News news) {
        Session session = sessionFactory.openSession();

        session.beginTransaction();

        session.saveOrUpdate(news);

        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(News news) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.delete(news);

        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void create(News news) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(news);

        session.getTransaction().commit();
        session.close();
    }


    @Override
    public News findById(Long newsId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        News news = session.get(News.class, newsId);

        session.getTransaction().commit();
        session.close();

        return news;
    }

}
