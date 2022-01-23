package pl.coderslab.users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/users/show")
public class showUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        UserDao userDao = new UserDao();


        request.setAttribute("users", userDao.read(Integer.parseInt(request.getParameter("id"))));

        getServletContext().getRequestDispatcher("/users/show.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = new User();

        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("users", user);
        UserDao userDao = new UserDao();
        userDao.read(id);

        response.sendRedirect(request.getContextPath() + "/users/show");

    }
}
