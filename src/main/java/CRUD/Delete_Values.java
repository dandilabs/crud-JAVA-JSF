package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.User_Bean;

public class Delete_Values {
	public void delete_value(String id_user) {
		DB_Connection obj_DB_Connection = new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;		
		
		try {
			String querry="DELETE FROM user WHERE id_user=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, id_user);
			ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
