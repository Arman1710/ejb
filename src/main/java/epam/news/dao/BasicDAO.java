package epam.news.dao;

import epam.news.model.entity.Basic;

import java.util.List;

public interface BasicDAO<T extends Basic> {
    List<T> read();

    void update(T model);

    void delete(T model);

    void create(T model);

}
