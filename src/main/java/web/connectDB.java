/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.db;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author MINH THUY
 */

/**
 *
 * @author MINH THUY
 */

public class connectDB {
 private  Statement stmt ;
 

//    public connectDB() {
//        
//    
//    }
    
   
   public Statement getConnect() {
       
          try {
              try {
                  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
              } catch (ClassNotFoundException ex) {
                  Logger.getLogger(connectDB.class.getName()).log(Level.SEVERE, null, ex);
              }
     String dbURL = "jdbc:sqlserver://localhost;databaseName=tmdt;user=sa;password=kochodau";
    Connection conn  = DriverManager.getConnection(dbURL);
    if (conn != null) {
    this.stmt = conn.createStatement();
}
    else
      conn  = DriverManager.getConnection(dbURL);
   }
  catch (SQLException ex) {
     System.err.println("Cannot connect database, " + ex);
    this.stmt = null;
   };
    return this.stmt;
  }
//    public static void main(String[] args) {
//       Statement stmt = new connectDB().getConnect();
//       
//    }
 
}

