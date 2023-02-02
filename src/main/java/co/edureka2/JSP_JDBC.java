package co.edureka2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JSP_JDBC {
	String url = "jdbc:mysql://localhost:3306/jsp_schema";
	String uname = "root";
	String pass = "mysql";
	String query = "SELECT * FROM jsp_schema.login where username=? and password=?";

	public boolean check(String u, String pw) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			PreparedStatement st = con.prepareStatement(query);
			System.out.println(con);
			st.setString(1, u);
			st.setString(2, pw);
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}
}
