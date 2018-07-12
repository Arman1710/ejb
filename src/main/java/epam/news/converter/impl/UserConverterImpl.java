package epam.news.converter.impl;

import epam.news.converter.UserConverter;
import epam.news.model.dto.UserDTO;
import epam.news.model.entity.Role;
import epam.news.model.entity.User;
import org.springframework.stereotype.Component;

import javax.ejb.Stateless;


@Stateless
public class UserConverterImpl implements UserConverter {
    @Override
    public User DTOToEntity(UserDTO userDTO) {
        User user = new User();
        user.setUsername(userDTO.getUsername());
        user.setPassword(userDTO.getPassword());
        return user;
    }
}
