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
public class susu {
    private int idsusu, kalori, count;
    private String namasusu;
    
    public susu(){
        
    }
    
    public susu(String namasusu, int kalori){
        this.namasusu = namasusu;
        this.kalori = kalori;
    }
    
    public String toString(){
        return namasusu;
    }
    
    public susu getById(int id){
        susu cus = new susu();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM susu"
                + " WHERE idsusu = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new susu();
                cus.setIdsusu(rs.getInt("idsusu"));
                cus.setNamasusu(rs.getString("namasusu"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public susu getByNama(String nama){
        susu cus = new susu();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM susu"
                + " WHERE namasusu = '" +nama+ "'");
        
        try{
            while(rs.next()){
                cus = new susu();
                cus.setIdsusu(rs.getInt("idsusu"));
                cus.setNamasusu(rs.getString("namasusu"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<susu> getAll(){
        ArrayList<susu> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM susu";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                susu cus = new susu();
                cus.setIdsusu(rs.getInt("idsusu"));
                cus.setNamasusu(rs.getString("namasusu"));
                cus.setKalori(rs.getInt("kalori"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<susu> search(String keyword){
        ArrayList<susu> List = new ArrayList();
        
        String sql = "SELECT * FROM susu WHERE"
                + " namasusu LIKE '%" + keyword + "%'"
                + " OR kalori LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                susu kat = new susu();
                kat.setIdsusu(rs.getInt("idsusu"));
                kat.setNamasusu(rs.getString("namasusu"));
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
        if(getById(idsusu).getIdsusu()== 0){
            String SQL = "INSERT INTO susu (namasusu, kalori) VALUES("
                    +"  '" +this.namasusu+ "',"
                    +"  " +this.kalori+ ""
                    +"  )";
            this.idsusu = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE susu SET"
                    +"  namasusu = '" +this.namasusu+ "',"
                    +"  kalori = " +this.kalori+ ""
                    +"  WHERE idsusu = '" +this.idsusu+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM susu WHERE idsusu = '" +this.idsusu+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdsusu() {
        return idsusu;
    }

    public void setIdsusu(int idsusu) {
        this.idsusu = idsusu;
    }

    public int getKalori() {
        return kalori;
    }

    public void setKalori(int kalori) {
        this.kalori = kalori;
    }

    public String getNamasusu() {
        return namasusu;
    }

    public void setNamasusu(String namasusu) {
        this.namasusu = namasusu;
    }  

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}