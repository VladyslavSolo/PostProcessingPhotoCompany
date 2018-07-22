package ui;

import hibernate.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static service.UserServletService.userList;


@WebServlet("/userlist")
public class UserListServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       userList =new UserService().findAll();
       System.out.print(userList);
       req.setAttribute("list", userList);
        req.getRequestDispatcher("accountslist.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService uService=new UserService();
        int id = Integer.parseInt(req.getParameter("id"));
        uService.delete(id);
    }
}
