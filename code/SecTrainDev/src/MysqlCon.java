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

@WebServlet("/MysqlCon")
public class MysqlCon extends HttpServlet {
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
        if(method.equals("grade"))
        {
            String token = request.getParameter("token");
            String username = request.getParameter("username");
            out= response.getWriter();
            new MysqlCon().grade(username,token, response);
        }
        else if(method.equals("query"))
        {
            String username = request.getParameter("username");
            out= response.getWriter();
            new MysqlCon().query(username, response);
        }
        else
        {
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
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    // Code for the sign up function
    public void sign_up(String username, String password, HttpServletResponse response) {
        try {
            //response to the writer for each stage of the jdbc
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account", "root", "1234567890");
            Statement stmt = con.createStatement();
            // do the query for login
            ResultSet rs = stmt.executeQuery("SELECT username FROM userinfo WHERE username = '" + username + "'");
            if (!rs.next()){
                stmt.executeUpdate("INSERT INTO userinfo VALUES ('" + username + "','" + password + "')");
                stmt.executeUpdate("INSERT INTO usergrade VALUES ('" + username + "','0')");
                response.addHeader("result", "Pass");
            }else {
                response.addHeader("result", "Exist");
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //Code for the login function
    public void login(String username, String password, HttpServletResponse response) {
        try {
            //response to the writer for each stage of the jdbc
            response.getWriter().print("2");
            Class.forName("com.mysql.jdbc.Driver");
            response.getWriter().print("3");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account", "root", "1234567890");
            response.getWriter().print("4");
            Statement stmt = con.createStatement();
            response.getWriter().print("5");
            // do the query for login
            ResultSet rs = stmt.executeQuery("SELECT password FROM userinfo WHERE username = '" + username + "'");
            response.getWriter().print("6");
            if (rs.next()) {
                if (rs.getString(1).equals(password)) {
                    response.getWriter().print("Pass");
                    response.addHeader("result", "Pass");
                } else {
                    response.getWriter().print("Fail");
                    response.addHeader("result", "Fail");
                }
            }else {
                response.getWriter().print("Fail");
                response.addHeader("result", "Fail");
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //Code for the grading function
    public void grade(String username, String token, HttpServletResponse response) {
        try {
            // use jdbc too
            System.out.println(token);
            System.out.println(username);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account", "root", "1234567890");
            Statement stmt = con.createStatement();
            // do the query for grading
            ResultSet rs = stmt.executeQuery("SELECT score FROM token WHERE token = '" + token + "'");
            if (rs.next()) {
                System.out.println("5");
                response.addHeader("result", "5");
                stmt.executeUpdate("UPDATE usergrade SET score = score + 5 WHERE username = '"+username+"'");
            }else {
                System.out.println("0");
                response.addHeader("result", "0");
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    //Code for the querying function
    public void query(String username, HttpServletResponse response) {
        try {
            // use jdbc
            int flag = 0;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account", "root", "1234567890");
            Statement stmt = con.createStatement();
            // do the query for grading
            ResultSet rs = stmt.executeQuery("SELECT score FROM usergrade WHERE username = '" + username + "'");
            if (rs.next()) {
                response.addHeader("grade", rs.getString(1));
            } else {
                response.addHeader("result", "0");
            }
            rs = stmt.executeQuery("SELECT challenge FROM challenge WHERE username = '" + username + "'");
            while (rs.next()) {
                response.addHeader("Challenges", rs.getString(1));
                flag = 1;
            }
            if (flag == 0) {
                response.addHeader("Challenges", "None");
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
