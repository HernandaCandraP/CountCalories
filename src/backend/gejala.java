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
public class gejala {
    private int id;
    private String jenis, gejala;
    
    public gejala(){
        
    }
    
    public gejala(String jenis, String gejala){
        this.jenis = jenis;
        this.gejala = gejala;
    }
    
    public gejala getById(int id){
        gejala cus = new gejala();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM gejala"
                + " WHERE id = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new gejala();
                cus.setId(rs.getInt("id"));
                cus.setJenis(rs.getString("jenis"));
                cus.setGejala(rs.getString("gejala"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    
    public ArrayList<gejala> getAll(){
        ArrayList<gejala> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM gejala";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                gejala cus = new gejala();
                cus.setId(rs.getInt("id"));
                cus.setJenis(rs.getString("jenis"));
                cus.setGejala(rs.getString("gejala"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<gejala> search(String keyword){
        ArrayList<gejala> List = new ArrayList();
        
        String sql = "SELECT * FROM gejala WHERE"
                + " jenis LIKE '%" + keyword + "%'"
                + " OR gejala LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                gejala kat = new gejala();
                kat.setId(rs.getInt("id"));
                kat.setJenis(rs.getString("jenis"));
                kat.setGejala(rs.getString("gejala"));
                
                List.add(kat);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public void save(){
        if(getById(id).getId()== 0){
            String SQL = "INSERT INTO gejala (jenis, gejala) VALUES("
                    +"  '" +this.jenis+ "',"
                    +"  '" +this.gejala+ "'"
                    +"  )";
            this.id = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE gejala SET"
                    +"  jenis = '" +this.jenis+ "',"
                    +"  gejala = '" +this.gejala+ "'"
                    +"  WHERE id = '" +this.id+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM gejala WHERE id = '" +this.id+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJenis() {
        return jenis;
    }

    public void setJenis(String jenis) {
        this.jenis = jenis;
    }

    public String getGejala() {
        return gejala;
    }

    public void setGejala(String gejala) {
        this.gejala = gejala;
    }

}