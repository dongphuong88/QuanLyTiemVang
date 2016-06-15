import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Testing {

	public static void main(String[] args) {
		try {
			String connectionString = "jdbc:sqlserver://localhost:1433;"
					+ "databaseName=Cam_Do_Database;integratedSecurity=true;";

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection con = DriverManager.getConnection(connectionString);

			// Mapping Data
			PreparedStatement stmt = con
					.prepareStatement("UPDATE LOAIVANGS SET GiaMua=?, GiaBan=? WHERE LoaiVang=?");
			stmt.setInt(1, 3440);stmt.setInt(2, 3370);stmt.setString(3, "9999");
			stmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
