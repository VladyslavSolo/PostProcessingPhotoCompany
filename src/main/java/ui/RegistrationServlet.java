package ui;

import hibernate.model.User;
import hibernate.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;

@WebServlet("/registration")

public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("registration.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String login=req.getParameter("login");
        String password=req.getParameter("password");
        String name=req.getParameter("name");
        String surname= req.getParameter("surname");
        String email=req.getParameter("email");
        String icq=req.getParameter("icq");
        boolean sex=false;
        if(req.getParameter("gender").equalsIgnoreCase("Женский"))sex=true;
        boolean subcribe= Boolean.parseBoolean(req.getParameter("subscribe"));

        User user = new User(new Date(), login,password, surname,name,email,icq,sex,subcribe);

        new UserService().persist(user);

        req.getSession().setAttribute("username",login);

        }
}