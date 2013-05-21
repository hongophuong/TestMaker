/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Win7
 */
public class DeThi {
    static final String dburl = "jdbc:mysql://localhost:3306/thionline?useUnicode=true&characterEncoding=UTF-8";
        
    public static List taodethi() {
        List<String> list = new ArrayList<String>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(dburl, "root", "root");

            Statement st = con.createStatement();

            ResultSet result = st.executeQuery("SELECT * FROM cauhoi");

            while (result.next()) {
                list.add(result.getString("idCauHoi"));
                list.add(result.getString("tenCauHoi"));
                list.add(result.getString("a"));
                list.add(result.getString("b"));
                list.add(result.getString("c"));
                list.add(result.getString("d")==null?" ":result.getString("d"));
                list.add(result.getString("e")==null?" ":result.getString("e"));
            }

            con.close();

        } catch (Exception ex) {
            Logger.getLogger(DeThi.class.getName()).log(
                    Level.SEVERE, null, ex);
        }
        return list;
    }
}
