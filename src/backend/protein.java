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
public class protein {
    private int idprotein, kalori, count;
    private String namaprotein;
    
    public protein(){
        
    }
    
    public protein(String namaprotein, int kalori){
        this.namaprotein = namaprotein;
        this.kalori = kalori;
    }
    
    public String toString(){
        return namaprotein;
    }
    
    public protein getById(int id){
        protein cus = new protein();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM protein"
                + " WHERE idprotein = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new protein();
                cus.setIdprotein(rs.getInt("idprotein"));
                cus.setNamaprotein(rs.getString("namaprotein"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public protein getByNama(String nama){
        protein cus = new protein();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM protein"
                + " WHERE namaprotein = '" +nama+ "'");
        
        try{
            while(rs.next()){
                cus = new protein();
                cus.setIdprotein(rs.getInt("idprotein"));
                cus.setNamaprotein(rs.getString("namaprotein"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<protein> getAll(){
        ArrayList<protein> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM protein";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                protein cus = new protein();
                cus.setIdprotein(rs.getInt("idprotein"));
                cus.setNamaprotein(rs.getString("namaprotein"));
                cus.setKalori(rs.getInt("kalori"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<protein> search(String keyword){
        ArrayList<protein> List = new ArrayList();
        
        String sql = "SELECT * FROM protein WHERE"
                + " namaprotein LIKE '%" + keyword + "%'"
                + " OR kalori LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                protein kat = new protein();
                kat.setIdprotein(rs.getInt("idprotein"));
                kat.setNamaprotein(rs.getString("namaprotein"));
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
        if(getById(idprotein).getIdprotein()== 0){
            String SQL = "INSERT INTO protein (namaprotein, kalori) VALUES("
                    +"  '" +this.namaprotein+ "',"
                    +"  " +this.kalori+ ""
                    +"  )";
            this.idprotein = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE protein SET"
                    +"  namaprotein = '" +this.namaprotein+ "',"
                    +"  kalori = " +this.kalori+ ""
                    +"  WHERE idprotein = '" +this.idprotein+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM protein WHERE idprotein = '" +this.idprotein+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdprotein() {
        return idprotein;
    }

    public void setIdprotein(int idprotein) {
        this.idprotein = idprotein;
    }

    public int getKalori() {
        return kalori;
    }

    public void setKalori(int kalori) {
        this.kalori = kalori;
    }

    public String getNamaprotein() {
        return namaprotein;
    }

    public void setNamaprotein(String namaprotein) {
        this.namaprotein = namaprotein;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}