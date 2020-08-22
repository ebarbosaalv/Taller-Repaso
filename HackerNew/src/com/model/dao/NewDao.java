package com.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.model.New;

/**
 *
 * @author orion
 */
public class NewDao {

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

    public static int save(New n) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into BDNew(title,url,text,progress) values(?,?,?,?)");
            ps.setString(1, n.getTitle());
            ps.setString(2, n.getUrl());
            ps.setString(3, n.getText());
             ps.setString(4, n.getProgress());

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(New n) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update BDNew set title=?,url=?,text=?,progress=? where id=?");
            ps.setString(1, n.getTitle());
            ps.setString(2, n.getUrl());
            ps.setString(3, n.getText());
             ps.setString(4, n.getProgress());
            ps.setInt(5, n.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(New n) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from BDNew where id=?");
            ps.setInt(1, n.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<New> getAllRecords() {
        List<New> list = new ArrayList<New>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from BDNew");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                New n = new New();
                n.setId(rs.getInt("id"));
                n.setTitle(rs.getString("title"));
                n.setUrl(rs.getString("url"));
                n.setText(rs.getString("text"));
                n.setProgress(rs.getString("progress"));

                list.add(n);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static New getRecordById(int id) {
        New n = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from BDNew where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                n = new New();
                n.setId(rs.getInt("id"));
                n.setTitle(rs.getString("title"));
                n.setUrl(rs.getString("url"));
                n.setText(rs.getString("text"));
                n.setProgress(rs.getString("progress"));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return n;
    }
}
