package DBConnections;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.rowset.CachedRowSet;
import javax.sql.rowset.RowSetProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class C3P0Utils {
    private static ComboPooledDataSource cpds = new ComboPooledDataSource();

    public static Connection getConnection() {
        try {
            return cpds.getConnection();
        } catch (SQLException e) {
            System.out.println("连接创建失败");
            e.printStackTrace();
            return null;
        }
    }

    public static CachedRowSet getResultSet(String sql) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        CachedRowSet crs = null;
        try {
            conn = C3P0Utils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.execute();
            rs = ps.getResultSet();
            crs = RowSetProvider.newFactory().createCachedRowSet();
            crs.populate(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            release(conn, rs, ps);
        }

        return crs;
    }

    public static boolean excuteSQL(String sql) {
        boolean flag = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = C3P0Utils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.execute();
            flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public static void release(Connection conn, ResultSet rs, PreparedStatement ps) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
