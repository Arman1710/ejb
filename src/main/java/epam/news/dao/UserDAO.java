package epam.news.dao;

import epam.news.model.entity.User;

public interface UserDAO extends BasicDAO<User> {
    User getByUserName(String username);
}
