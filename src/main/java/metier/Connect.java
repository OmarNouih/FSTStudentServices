package metier;

import java.sql.*;

public class Connect {

	public static Connection con;

	@SuppressWarnings("deprecation")
	public static Connection getConnection() {
		try
		{
	        Class.forName("com.mysql.jdbc.Driver").newInstance();
	        con = DriverManager.getConnection("jdbc:mysql://localhost/miniprojet","root","");

		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
