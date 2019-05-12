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
public class manfaat_makanan {
    private int idmanfaat;
    private String jenismakanan, manfaat;
    
    public manfaat_makanan(){
        
    }
    
    public manfaat_makanan(String jenismakanan, String manfaat){
        this.jenismakanan = jenismakanan;
        this.manfaat = manfaat;
    }
    
    public manfaat_makanan getById(int id){
        manfaat_makanan cus = new manfaat_makanan();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM manfaat_makanan"
                + " WHERE idmanfaat = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new manfaat_makanan();
                cus.setIdmanfaat(rs.getInt("idmanfaat"));
                cus.setJenismakanan(rs.getString("jenismakanan"));
                cus.setManfaat(rs.getString("manfaat"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<manfaat_makanan> getAll(){
        ArrayList<manfaat_makanan> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM manfaat_makanan";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                manfaat_makanan cus = new manfaat_makanan();
                cus.setIdmanfaat(rs.getInt("idmanfaat"));
                cus.setJenismakanan(rs.getString("jenismakanan"));
                cus.setManfaat(rs.getString("manfaat"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<manfaat_makanan> search(String keyword){
        ArrayList<manfaat_makanan> List = new ArrayList();
        
        String sql = "SELECT * FROM manfaat_makanan WHERE"
                + " jenismakanan LIKE '%" + keyword + "%'"
                + " OR manfaat LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                manfaat_makanan kat = new manfaat_makanan();
                kat.setIdmanfaat(rs.getInt("idmanfaat"));
                kat.setJenismakanan(rs.getString("jenismakanan"));
                kat.setManfaat(rs.getString("manfaat"));
                
                List.add(kat);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public void save(){
        if(getById(idmanfaat).getIdmanfaat()== 0){
            String SQL = "INSERT INTO manfaat_makanan (jenismakanan, manfaat) VALUES("
                    +"  '" +this.jenismakanan+ "',"
                    +"  '" +this.manfaat+ "'"
                    +"  )";
            this.idmanfaat = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE manfaat_makanan SET"
                    +"  jenismakanan = '" +this.jenismakanan+ "',"
                    +"  manfaat = '" +this.manfaat+ "'"
                    +"  WHERE idmanfaat = '" +this.idmanfaat+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM manfaat_makanan WHERE idmanfaat = '" +this.idmanfaat+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdmanfaat() {
        return idmanfaat;
    }

    public void setIdmanfaat(int idmanfaat) {
        this.idmanfaat = idmanfaat;
    }

    public String getJenismakanan() {
        return jenismakanan;
    }

    public void setJenismakanan(String jenismakanan) {
        this.jenismakanan = jenismakanan;
    }

    public String getManfaat() {
        return manfaat;
    }

    public void setManfaat(String manfaat) {
        this.manfaat = manfaat;
    }
}