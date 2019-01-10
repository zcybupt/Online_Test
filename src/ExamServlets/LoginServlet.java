package ExamServlets;

import Bean.User;
import DAO.UserDAO;
import DAO.impl.UserDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO userDAO = new UserDAOImpl();
        PrintWriter out = resp.getWriter();
        boolean identity = userDAO.checkIdentity(username, password);
        if (identity) {
            User user = userDAO.getUser(username);
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            out.print("success");
        } else {
            out.print("fail");
        }
    }
}
