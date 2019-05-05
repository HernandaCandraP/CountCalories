/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backend;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author ASUS
 */
public class DBHelper2 {

    private static Connection koneksi;
    
    public static void bukaKoneksi() {
        
        try{
            String url="jdbc:sqlite:/countCalories.db";
            koneksi = DriverManager.getConnection(url);
            System.out.println("connect");
        }catch(SQLException se){
            JOptionPane.showMessageDialog(null, "gagal");
    }
    }
//     private static Connection koneksi;
//     public static void bukaKoneksi()     
//     {
//          if(koneksi == null){ 
//              try{
//                  String url = "jdbc:sqlite:D:/PBO/adbo/src/backend/database/countCalories.sqlite";
//                  koneksi = DriverManager.getConnection(url);
//                  System.out.println("connect");
//              }          
//              catch (SQLException t){
//                  System.out.println("Error koneksi!");
//              }   
//          }
//     }
     
      public static int insertQueryGetId(String query){ 
          bukaKoneksi();
          int num = 0;
          int result = -1; 
          
          try{ 
              Statement stmt = koneksi.createStatement();
              num = stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS); 
 
              ResultSet rs = stmt.getGeneratedKeys();
              
              if (rs.next()){
                  result = rs.getInt(1);
              }
              rs.close();  
              stmt.close(); 
          }
          catch (Exception e){
              e.printStackTrace();
              result = -1;       
              System.out.println(query);
          }
          return result;
          
     }
      
      public static boolean executeQuery(String query){
          bukaKoneksi();
          boolean result = false;
          
          try{
              Statement stmt = koneksi.createStatement();
              stmt.executeUpdate(query);
              result = true;
              stmt.close();
          }         
          catch (Exception e){
              e.printStackTrace();
          }                  
          return result;     
      }
      
      public static ResultSet selectQuery(String query){
          bukaKoneksi();
          ResultSet rs = null;
          
          try{
              Statement stmt = koneksi.createStatement();
              rs = stmt.executeQuery(query);
          }         
          catch (Exception e){
              e.printStackTrace();
          }
          return rs;
      } 
    
    public static void main(String[] args) {
        //ResultSet rs = DBHelper.selectQuery("SELECT * FROM protein");
        bukaKoneksi();
        ResultSet rs = DBHelper2.selectQuery("Select * from buah");
        
    }
}
