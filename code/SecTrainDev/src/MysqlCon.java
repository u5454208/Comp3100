/**
 * Created by lrz0927 on 6/3/17.
 */

import java.sql.*;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.lang.*;

class MysqlCon extends HttpServlet {
        String method;
        String username;
        String password;
    public void init()
    {
        method=new String();
        username=new String();
        password=new String();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String method = request.getParameter("method");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(method.equals("signup"))
        {
            out= response.getWriter();
            new MysqlCon().sign_up(username, password, response);
        }
        if(method.equals("login"))
        {
            out= response.getWriter();
            new MysqlCon().login(username, password, response);
        }
    }
    // 处理 POST 方法请求的方法
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    public void sign_up(String username, String password, HttpServletResponse response) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account", "root", "1234567890");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT username FROM userinfo WHERE username = '" + username + "'");
            if (!rs.next()){
                stmt.executeUpdate("INSERT INTO userinfo VALUES ('" + username + "','" + password + "')");
                response.addHeader("result", "Pass");
            }else {
                response.addHeader("result", "gndy");
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    public void login(String username, String password, HttpServletResponse response) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account", "root", "1234567890");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT password FROM userinfo WHERE username = '" + username + "'");
            while (rs.next()) {
                System.out.println(rs.getString(1));
                if (rs.getString(1).equals(password)) {
                    response.addHeader("result", "Pass");
                } else {
                    response.addHeader("result", "SB");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
