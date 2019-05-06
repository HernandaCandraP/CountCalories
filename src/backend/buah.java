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
public class buah {
    private int idbuah, kalori, count;
    private String namabuah;
    
    public buah(){
        
    }
    
    public buah(String namabuah, int kalori){
        this.namabuah = namabuah;
        this.kalori = kalori;
    }
    
    public String toString(){
        return namabuah;
    }
    
    public buah getById(int id){
        buah cus = new buah();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM buah"
                + " WHERE idbuah = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new buah();
                cus.setIdbuah(rs.getInt("idbuah"));
                cus.setNamabuah(rs.getString("namabuah"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
        public buah getByNama(String nama){
        buah cus = new buah();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM buah"
                + " WHERE namabuah = '" +nama+ "'");
        
        try{
            while(rs.next()){
                cus = new buah();
                cus.setIdbuah(rs.getInt("idbuah"));
                cus.setNamabuah(rs.getString("namabuah"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<buah> getAll(){
        ArrayList<buah> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM buah";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                buah cus = new buah();
                cus.setIdbuah(rs.getInt("idbuah"));
                cus.setNamabuah(rs.getString("namabuah"));
                cus.setKalori(rs.getInt("kalori"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<buah> search(String keyword){
        ArrayList<buah> List = new ArrayList();
        
        String sql = "SELECT * FROM buah WHERE"
                + " namabuah LIKE '%" + keyword + "%'"
                + " OR kalori LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                buah kat = new buah();
                kat.setIdbuah(rs.getInt("idbuah"));
                kat.setNamabuah(rs.getString("namabuah"));
                kat.setKalori(rs.getInt("kalori"));
                
                List.add(kat);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public void save(){
        if(getById(idbuah).getIdbuah()== 0){
            String SQL = "INSERT INTO buah (namabuah, kalori) VALUES("
                    +"  '" +this.namabuah+ "',"
                    +"  " +this.kalori+ ""
                    +"  )";
            this.idbuah = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE buah SET"
                    +"  namabuah = '" +this.namabuah+ "',"
                    +"  kalori = " +this.kalori+ ""
                    +"  WHERE idbuah = '" +this.idbuah+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM buah WHERE idbuah = '" +this.idbuah+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdbuah() {
        return idbuah;
    }

    public void setIdbuah(int idbuah) {
        this.idbuah = idbuah;
    }

    public int getKalori() {
        return kalori;
    }

    public void setKalori(int kalori) {
        this.kalori = kalori;
    }

    public String getNamabuah() {
        return namabuah;
    }

    public void setNamabuah(String namabuah) {
        this.namabuah = namabuah;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
     
}
