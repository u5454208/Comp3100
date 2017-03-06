/**
 * Created by lrz0927 on 6/3/17.
 */

import java.sql.*;

class MysqlCon {
    public static void main(String args[]) {
        String username = "slbj";
        String password = "dsb";

        new MysqlCon().sign_up(username, password);
    }


    public void sign_up(String username, String password) {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account","root","1234567890");
            Statement stmt=con.createStatement();
            stmt.executeUpdate("INSERT INTO userinfo VALUES ('"+username+"','"+password+"')");

        }catch(Exception e){ System.out.println(e);}
    }
}
