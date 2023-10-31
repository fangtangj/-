package servlet;

import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {


        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            this.doPost(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name=req.getParameter("name");
            String pwd=req.getParameter("pwd");
            if (name.equals("xdclass")&& pwd.equals("123456") ){
                User user=new User();
                user.setName(name);
                user.setId(144);
                user.setHost("xdclass.net");
                req.getSession().setAttribute("loginUser",user);
                PrintWriter printWriter=resp.getWriter();
                printWriter.write("登录成功");

               req.getRequestDispatcher("/source/home.jsp").forward(req,resp);


            }else{
                req.setAttribute("msg","账号密码错误");
                req.getRequestDispatcher("/source/login.jsp").forward(req,resp);

            }

        }
    }


