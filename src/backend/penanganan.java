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
public class penanganan {
    private int idpenanganan;
    private String jenissakit, jenistraining, training;
    
    public penanganan(){
        
    }
    
    public penanganan(String jenissakit, String jenistraining, String training){
        this.jenissakit = jenissakit;
        this.jenistraining = jenistraining;
        this.training = training;
    }
    
    public penanganan getById(int id){
        penanganan cus = new penanganan();
        ResultSet rs = DBHelper.selectQuery("SELECT * FROM penanganan"
                + " WHERE idpenanganan = '" +id+ "'");
        
        try{
            while(rs.next()){
                cus = new penanganan();
                cus.setIdpenanganan(rs.getInt("idpenanganan"));
                cus.setJenissakit(rs.getString("jenissakit"));
                cus.setJenistraining(rs.getString("jenistraining"));
                cus.setTraining(rs.getString("training"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return cus;
    }
    
    public ArrayList<penanganan> getAll(){
        ArrayList<penanganan> List = new ArrayList();
        String keyword = null;
        
        String sql = "SELECT * FROM penanganan";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                penanganan cus = new penanganan();
                cus.setIdpenanganan(rs.getInt("idpenanganan"));
                cus.setJenissakit(rs.getString("jenissakit"));
                cus.setJenistraining(rs.getString("jenistraining"));
                cus.setTraining(rs.getString("training"));
                
                List.add(cus);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public ArrayList<penanganan> search(String keyword){
        ArrayList<penanganan> List = new ArrayList();
        
        String sql = "SELECT * FROM penanganan WHERE"
                + " jenissakit LIKE '%" + keyword + "%'"
                + " OR jenistraining LIKE '%" +keyword+ "%' "
                + " OR training LIKE '%" +keyword+ "%' ";
        
        ResultSet rs = DBHelper.selectQuery(sql);
        
        try{
            while(rs.next()){
                penanganan kat = new penanganan();
                kat.setIdpenanganan(rs.getInt("idpenanganan"));
                kat.setJenissakit(rs.getString("jenissakit"));
                kat.setJenistraining(rs.getString("jenistraining"));
                kat.setTraining(rs.getString("training"));
                
                List.add(kat);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return List;
    }
    
    public void save(){
        if(getById(idpenanganan).getIdpenanganan()== 0){
            String SQL = "INSERT INTO penanganan (jenissakit, jenistraining, training) VALUES("
                    +"  '" +this.jenissakit+ "',"
                    +"  '" +this.jenistraining+ "',"
                    +"  '" +this.training+ "' "
                    +"  )";
            this.idpenanganan = DBHelper.insertQueryGetId(SQL);
        }
        else{
            String SQL = "UPDATE penanganan SET"
                    +"  jenissakit = '" +this.jenissakit+ "',"
                    +"  jenistraining = '" +this.jenistraining+ "',"
                    +"  training = '" +this.training+ "'"
                    +"  WHERE idpenanganan = '" +this.idpenanganan+ "'";
            DBHelper.executeQuery(SQL);
        }
    }
    
    public void delete(){
        String SQL = "DELETE FROM penanganan WHERE idpenanganan = '" +this.idpenanganan+ "'";
        DBHelper.executeQuery(SQL);
    }

    public int getIdpenanganan() {
        return idpenanganan;
    }

    public void setIdpenanganan(int idpenanganan) {
        this.idpenanganan = idpenanganan;
    }

    public String getJenissakit() {
        return jenissakit;
    }

    public void setJenissakit(String jenissakit) {
        this.jenissakit = jenissakit;
    }

    public String getJenistraining() {
        return jenistraining;
    }

    public void setJenistraining(String jenistraining) {
        this.jenistraining = jenistraining;
    }

    public String getTraining() {
        return training;
    }

    public void setTraining(String training) {
        this.training = training;
    }

}