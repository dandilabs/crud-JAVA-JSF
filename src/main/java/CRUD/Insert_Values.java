package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Connection;

public class Insert_Values {
	public void insert_values(String id_user, String username, String email, String mobile) {
		DB_Connection obj_DB_Connection = new DB_Connection();
		Connection connection = obj_DB_Connection.get_connection();
		
		PreparedStatement ps = null;
		
		try {
			String query = "INSERT INTO user (id_user, username, email, mobile) VALUES (?,?,?,?)";
			ps=connection.prepareStatement(query);
			ps.setString(1, id_user);
			ps.setString(2, username);
			ps.setString(3, email);
			ps.setString(4, mobile);
			
			ps.executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
		}
	}
}
