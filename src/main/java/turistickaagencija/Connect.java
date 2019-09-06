/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package turistickaagencija;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author PC
 */
public class Connect {
//    
//    private static Connection con;
//    public static String host="jdbc:mysql://localhost:3306";
//    public static String shema = "turisticka_agencija";
//    public static String user = "dule";
//    public static String password ="123";
//    public static String url = host + "/" + shema + "?autoReconnect=true&useSSL=false";
//
//    
//    
//    public static Connection getConnection(){
//    
//        try {
//             con = DriverManager.getConnection(url, user, password);
//        } catch (SQLException ex) {
//            System.out.println("Driver not found."); 
//        }
//    return con;   
//}
    
    public static String url = "jdbc:mysql://localhost:3306/turisticka_agencija?autoReconnect=true&useSSL=false";    
    public static String driverName = "com.mysql.jdbc.Driver";   
    public static String username = "dule";   
    public static String password = "123";
    public static Connection con;
    public static String urlstring;

    public static Connection getConnection() {
        try {
            Class.forName(driverName);
            try {
                con = DriverManager.getConnection(url, username, password);
            } catch (SQLException ex) {
                // log an exception. fro example:
                System.out.println("Failed to create the database connection."); 
            }
        } catch (ClassNotFoundException ex) {
            // log an exception. for example:
            System.out.println("Driver not found."); 
        }
        return con;
    }

    
}
