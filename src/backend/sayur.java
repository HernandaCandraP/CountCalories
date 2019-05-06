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
public class sayur {
    private int idsayur, kalori, count;
    private String namasayur;
    
    public sayur(){
        
    }
    
    public sayur(String namasayur, int kalori){
        this.namasayur = namasayur;
        this.kalori = kalori;
    }
    
    public String toString(){
        return namasayur;
    }
    
    public sayur getById(int id){
        sayur cus = new sayur();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM sayur"
                + " WHERE idsayur = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new sayur();
                cus.setIdsayur(rs.getInt("idsayur"));
                cus.setNamasayur(rs.getString("namasayur"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public sayur getByNama(String nama){
        sayur cus = new sayur();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM sayur"
                + " WHERE namasayur = '" +nama+ "'");
        
        try{
            while(rs.next()){
                cus = new sayur();
                cus.setIdsayur(rs.getInt("idsayur"));
                cus.setNamasayur(rs.getString("namasayur"));
                cus.setKalori(rs.getInt("kalori"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<sayur> getAll(){
        ArrayList<sayur> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM sayur";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                sayur cus = new sayur();
                cus.setIdsayur(rs.getInt("idsayur"));
                cus.setNamasayur(rs.getString("namasayur"));
                cus.setKalori(rs.getInt("kalori"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<sayur> search(String keyword){
        ArrayList<sayur> List = new ArrayList();
        
        String sql = "SELECT * FROM sayur WHERE"
                + " namasayur LIKE '%" + keyword + "%'"
                + " OR kalori LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                sayur kat = new sayur();
                kat.setIdsayur(rs.getInt("idsayur"));
                kat.setNamasayur(rs.getString("namasayur"));
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
        if(getById(idsayur).getIdsayur()== 0){
            String SQL = "INSERT INTO sayur (namasayur, kalori) VALUES("
                    +"  '" +this.namasayur+ "',"
                    +"  " +this.kalori+ ""
                    +"  )";
            this.idsayur = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE sayur SET"
                    +"  namasayur = '" +this.namasayur+ "',"
                    +"  kalori = " +this.kalori+ ""
                    +"  WHERE idsayur = '" +this.idsayur+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM sayur WHERE idsayur = '" +this.idsayur+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdsayur() {
        return idsayur;
    }

    public void setIdsayur(int idsayur) {
        this.idsayur = idsayur;
    }

    public int getKalori() {
        return kalori;
    }

    public void setKalori(int kalori) {
        this.kalori = kalori;
    }

    public String getNamasayur() {
        return namasayur;
    }

    public void setNamasayur(String namasayur) {
        this.namasayur = namasayur;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

}
