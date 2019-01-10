package DAO;

import Bean.User;

import java.sql.SQLException;

public interface UserDAO {

    User getUser(String username);

    boolean checkIdentity(String username, String password);

    boolean addUser(User user);

    boolean delUser(String username);

    boolean isExist(String username);
}
