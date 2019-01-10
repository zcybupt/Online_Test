package DAO.impl;

import DAO.UserDAO;
import DBConnections.C3P0Utils;
import Bean.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAOImpl implements UserDAO {

    public static ArrayList<User> getUserList(int start, int end) {
        String sql = "SELECT username FROM user_info;";
        ArrayList<User> users = new ArrayList<>();
        UserDAO userDAO = new UserDAOImpl();
        ResultSet rs = C3P0Utils.getResultSet(sql);
        try {
            int i = start;
            while (rs.next()) {
                if (i++ > end)
                    break;
                String username = rs.getString("username");
                User user = userDAO.getUser(username);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            C3P0Utils.release(null, rs, null);
        }
        return users;
    }

    @Override
    public User getUser(String username) {
        User user = new User();
        String sql = "SELECT * FROM user_info WHERE username = '" + username + "';";
        ResultSet rs = C3P0Utils.getResultSet(sql);
        try {
            if (rs.next()) {
                user.setUserName(rs.getString("username"));
                user.setPassword(rs.getString("passwd"));
                user.setEmail(rs.getString("email"));
                user.setPastExamID(rs.getString("pastExamID"));
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            C3P0Utils.release(null, rs, null);
        }
        return user;
    }

    @Override
    public boolean checkIdentity(String username, String password) {
        UserDAO userDAO = new UserDAOImpl();
        User user = userDAO.getUser(username);
        boolean flag = false;
        if (user == null) {
            flag = false;
        } else {
            if (user.getPassword().equals(password)) {
                flag = true;
            }
        }

        return flag;
    }

    @Override
    public boolean addUser(User user) {
        String sql = "INSERT INTO user_info (username, passwd, email, pastExamID) VALUES('"
                + user.getUsername() + "','"
                + user.getPassword() + "','"
                + user.getEmail() + "', '');";

        return C3P0Utils.excuteSQL(sql);
    }

    @Override
    public boolean delUser(String username) {
        String sql = "DELETE FROM user_info WHERE username = '" + username + "';";

        return C3P0Utils.excuteSQL(sql);
    }

    @Override
    public boolean isExist(String username) {
        boolean flag = false;
        String sql = "SELECT * FROM user_info WHERE username = '" + username + "';";
        ResultSet rs = C3P0Utils.getResultSet(sql);

        try {
            if (rs.next()) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            C3P0Utils.release(null, rs, null);
        }

        return flag;
    }
}
