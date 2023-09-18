package TriTechLead;

import java.sql.*;

/**
 *
 * @author Ruchira
 */

public class DbConnection { 
   Connection con;
   public Connection Connect()
    {
        try {
            String dbPath="jdbc:mysql://localhost/tritech-lead-mgt";
            con = DriverManager.getConnection(dbPath, "root", "");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } 
        return con;
    }
}
