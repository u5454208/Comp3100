/**
 * Created by lrz0927 on 6/3/17.
 */
import java.sql.*;
class MysqlCon{
    public static void main(String args[]){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/account","root","1234567890");


            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from token");
            while(rs.next())
                System.out.println(rs.getString(1)+"  "+rs.getString(2));
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
