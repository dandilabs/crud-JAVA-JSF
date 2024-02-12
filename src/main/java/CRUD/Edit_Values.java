package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.User_Bean;

public class Edit_Values {
	public User_Bean get_value_of_user(String id_user) {
		DB_Connection obj_DB_Connection = new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		User_Bean obj_User_Bean= new User_Bean();
		
		
		try {
			String querry="SELECT * FROM user WHERE id_user=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, id_user);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				
				obj_User_Bean.setId_user(rs.getString("id_user"));
				obj_User_Bean.setUsername(rs.getString("username"));
				obj_User_Bean.setEmail(rs.getString("email"));
				obj_User_Bean.setMobile(rs.getString("mobile"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return obj_User_Bean;
	}
	
	public void edit_user(User_Bean obj_User_Bean) {
		DB_Connection obj_DB_Connection = new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		try {
			String querry="UPDATE user SET username=?, email=?, mobile=? WHERE id_user=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, obj_User_Bean.getUsername());;
			ps.setString(2, obj_User_Bean.getEmail());;
			ps.setString(3, obj_User_Bean.getMobile());;
			ps.setString(4, obj_User_Bean.getId_user());;
			ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
}
