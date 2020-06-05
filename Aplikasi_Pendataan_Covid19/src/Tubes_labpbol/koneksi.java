package Tubes_labpbol;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class koneksi {

    static Connection con;

    public static Connection connection() {
        if (con == null) {
//            MysqlDataSource data = new MysqlDataSource();
//            data.setDatabaseName("tubeslabpbol");
//            data.setUser("root");
//            data.setPassword("");
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver"; // NEW JDBC DRIVER
   //static final String DB_URL = "jdbc:mysql://localhost/sakila";
   String DB_URL = "jdbc:mysql://localhost/tubeslabpbol?useUnicode=true"
    + "&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false"
    + "&serverTimezone=UTC"; // DB URL, nama db: covid_uts
   String USER = "root";
   String PASS = "";   
   
            try {
                con = DriverManager.getConnection(DB_URL, USER, PASS);
//                con = data.getConnection();


            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return con;
    }
}