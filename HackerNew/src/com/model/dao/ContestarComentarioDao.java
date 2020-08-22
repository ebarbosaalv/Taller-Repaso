/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.Comment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BOG-A410-E-015
 */
public class ContestarComentarioDao {

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

    public static int save(Comment c) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into bdcontestarcomentario(contestarcomentario) values(?)");
            ps.setString(1, c.getComment());

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Comment c) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update bdcontestarcomentario set contestarcomentario=? where id=?");
            ps.setString(1, c.getComment());
            ps.setInt(2, c.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Comment c) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from bdcontestarcomentario where id=?");
            ps.setInt(1, c.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Comment> getAllRecords() {
        List<Comment> list = new ArrayList<Comment>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from bdcontestarcomentario");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Comment c = new Comment();
                c.setId(rs.getInt("id"));
                c.setComment(rs.getString("contestarcomentario"));

                list.add(c);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Comment getRecordById(int id) {
        Comment c = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from bdcontestarcomentario where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c = new Comment();
                c.setId(rs.getInt("id"));
                c.setComment(rs.getString("contestarcomentario"));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return c;
    }
}
