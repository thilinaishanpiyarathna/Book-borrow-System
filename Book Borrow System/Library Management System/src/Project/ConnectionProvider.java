
package Project;
import java.sql.*;

public class ConnectionProvider {
    public static Connection getCon()
    {
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","TuRminatoR1996");
           return con;
                   
        }
        catch(Exception e)
        {
            System.out.println(e);
            return null;
        }
    }
    
}
