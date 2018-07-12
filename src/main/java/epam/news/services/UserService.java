package epam.news.services;

import epam.news.converter.UserConverter;
import epam.news.dao.UserDAO;
import epam.news.model.dto.UserDTO;
import epam.news.model.entity.User;
import org.apache.log4j.Logger;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.ejb.EJB;
import javax.ejb.Stateless;


@Stateless
public class UserService {

    private BCryptPasswordEncoder bCryptPasswordEncoder  = new BCryptPasswordEncoder();

    @EJB
    private UserConverter userConverter;

    @EJB
    private UserDAO userDAO;

    private final static Logger LOGGER = Logger.getLogger(UserService.class);

    public void createUser(UserDTO userDTO) {
        LOGGER.info("creating user");
        User user = userConverter.DTOToEntity(userDTO);
        user.setPassword(bCryptPasswordEncoder.encode(userDTO.getPassword()));
        user.setRoleId(2L);
        userDAO.create(user);
        LOGGER.info("User is created: " + user);
    }

    public User getUserByUsername(String username) {
        return userDAO.getByUserName(username);
    }

}





