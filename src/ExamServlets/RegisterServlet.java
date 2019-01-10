package ExamServlets;

import Bean.User;
import DAO.UserDAO;
import DAO.impl.UserDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        PrintWriter out = resp.getWriter();
        UserDAO userDAO = new UserDAOImpl();
        if (userDAO.isExist(username)) {
            out.print("true");
        }
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");

        User user = new User();
        user.setUserName(username);
        user.setPassword(password);
        user.setEmail(email);

        UserDAO userDAO = new UserDAOImpl();
        boolean result = false;
        result = userDAO.addUser(user);
        if (result)
            System.out.println("添加成功");
        else
            System.out.println("添加失败");
    }
}
