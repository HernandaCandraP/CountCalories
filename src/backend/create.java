/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backend;

import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author ASUS
 */
public class create {
    private int id, umur;
    private String namalengkap, username, password, jeniskelamin;
    
    public create(){
        
    }
    
    public create(String namalengkap, String username, String password, int umur,String jeniskelamin){
        this.namalengkap = namalengkap;
        this.username = username;
        this.password = password;
        this.umur = umur;
        this.jeniskelamin = jeniskelamin;
    }

    
    public create getById(int id){
        create cus = new create();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM login"
                + " WHERE id = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new create();
                cus.setId(rs.getInt("id"));
                cus.setNamalengkap(rs.getString("namalengkap"));
                cus.setUsername(rs.getString("username"));
                cus.setPassword(rs.getString("password"));
                cus.setUmur(rs.getInt("umur"));
                cus.setJeniskelamin(rs.getString("jeniskelamin"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<create> getAll(){
        ArrayList<create> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM login";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                create cus = new create();
                cus.setId(rs.getInt("id"));
                cus.setNamalengkap(rs.getString("namalengkap"));
                cus.setUsername(rs.getString("username"));
                cus.setPassword(rs.getString("password"));
                cus.setUmur(rs.getInt("umur"));
                cus.setJeniskelamin(rs.getString("jeniskelamin"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
//    public ArrayList<create> search(String keyword){
//        ArrayList<create> List = new ArrayList();
//        
//        String sql = "SELECT * FROM create WHERE"
//                + " namalengkap LIKE '%" + keyword + "%'"
//                + " OR kalori LIKE '%" +keyword+ "%' ";
//        
//        ResultSet rs = DBHelper.selectQuery(sql);
//        
//        try{
//            while(rs.next()){
//                create kat = new create();
//                kat.setIdsayur(rs.getInt("idsayur"));
//                kat.setNamasayur(rs.getString("namasayur"));
//                kat.setKalori(rs.getInt("kalori"));
//                
//                List.add(kat);
//            }
//        }
//        catch (Exception e){
//            e.printStackTrace();
//        }
//        return List;
//    }
    
    public void save(){
//        if(getById(id).getId()== 0){
            String SQL = "INSERT INTO login(namalengkap, username, password, umur, jeniskelamin) VALUES("
                    +"  '" +this.namalengkap+ "',"
                    +"  '" +this.username+ "',"
                    +"  '" +this.password+ "',"
                    +"  " +this.umur+ ","
                    +"  '" +this.jeniskelamin+ "'"
                    +"  )";
            this.id = DBHelper.insertQueryGetId(SQL);
//        }
//        else{
//            String SQL = "UPDATE sayur SET"
//                    +"  namasayur = '" +this.namasayur+ "',"
//                    +"  kalori = " +this.kalori+ ""
//                    +"  WHERE idsayur = '" +this.idsayur+ "'";
//            DBHelper.executeQuery(SQL);
//        }
    }
    
//    public void delete(){
//        String SQL = "DELETE FROM sayur WHERE idsayur = '" +this.idsayur+ "'";
//        DBHelper.executeQuery(SQL);
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUmur() {
        return umur;
    }

    public void setUmur(int umur) {
        this.umur = umur;
    }

    public String getNamalengkap() {
        return namalengkap;
    }

    public void setNamalengkap(String namalengkap) {
        this.namalengkap = namalengkap;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getJeniskelamin() {
        return jeniskelamin;
    }

    public void setJeniskelamin(String jeniskelamin) {
        this.jeniskelamin = jeniskelamin;
    }
    
}
