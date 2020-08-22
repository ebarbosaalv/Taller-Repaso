/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.Ask;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author orion
 */
public class AskDao {
    
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static int save(Ask a) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into BDAsk(text) values(?)");
            ps.setString(1, a.getText());
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(Ask n) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update BDAsk set text=? where id=?");
            ps.setString(1, n.getText());
            ps.setInt(2, n.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int delete(Ask a) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from BDAsk where id=?");
            ps.setInt(1, a.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return status;
    }
    
    public static List<Ask> getAllRecords() {
        List<Ask> list = new ArrayList<Ask>();
        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from BDAsk");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Ask a = new Ask();
                a.setId(rs.getInt("id"));
                a.setText(rs.getString("text"));
                
                list.add(a);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static Ask getRecordById(int id) {
        Ask a = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from BDAsk where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                a = new Ask();
                a.setId(rs.getInt("id"));
                a.setText(rs.getString("text"));
                
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return a;
    }
}
