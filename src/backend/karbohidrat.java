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
public class karbohidrat {
    private int idkarbo, kalori;
    private String namakarbo;
    
    public karbohidrat(){
        
    }
    
    public karbohidrat(String namakarbo, int kalori){
        this.namakarbo = namakarbo;
        this.kalori = kalori;
    }
    
    public String toString(){
        return namakarbo;
    }
    
    public karbohidrat getById(int id){
        karbohidrat cus = new karbohidrat();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM karbohidrat"
                + " WHERE idkarbo = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new karbohidrat();
                cus.setIdkarbo(rs.getInt("idkarbo"));
                cus.setNamakarbo(rs.getString("namakarbo"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<karbohidrat> getAll(){
        ArrayList<karbohidrat> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM karbohidrat";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                karbohidrat cus = new karbohidrat();
                cus.setIdkarbo(rs.getInt("idkarbo"));
                cus.setNamakarbo(rs.getString("namakarbo"));
                cus.setKalori(rs.getInt("kalori"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<karbohidrat> search(String keyword){
        ArrayList<karbohidrat> List = new ArrayList();
        
        String sql = "SELECT * FROM karbohidrat WHERE"
                + " namakarbo LIKE '%" + keyword + "%'"
                + " OR kalori LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                karbohidrat kat = new karbohidrat();
                kat.setIdkarbo(rs.getInt("idkarbo"));
                kat.setNamakarbo(rs.getString("namakarbo"));
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
        if(getById(idkarbo).getIdkarbo()== 0){
            String SQL = "INSERT INTO karbohidrat (namakarbo, kalori) VALUES("
                    +"  '" +this.namakarbo+ "',"
                    +"  " +this.kalori+ ""
                    +"  )";
            this.idkarbo = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE Karbohidrat SET"
                    +"  namakarbo = '" +this.namakarbo+ "',"
                    +"  kalori = " +this.kalori+ ""
                    +"  WHERE idkarbo = '" +this.idkarbo+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM Karbohidrat WHERE idkarbo = '" +this.idkarbo+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdkarbo() {
        return idkarbo;
    }

    public void setIdkarbo(int idkarbo) {
        this.idkarbo = idkarbo;
    }

    public int getKalori() {
        return kalori;
    }

    public void setKalori(int kalori) {
        this.kalori = kalori;
    }

    public String getNamakarbo() {
        return namakarbo;
    }

    public void setNamakarbo(String namakarbo) {
        this.namakarbo = namakarbo;
    }
    
}
