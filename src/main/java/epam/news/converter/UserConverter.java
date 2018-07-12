package epam.news.converter;

import epam.news.model.dto.UserDTO;
import epam.news.model.entity.User;

public interface UserConverter {
    User DTOToEntity(UserDTO userDTO);
}
