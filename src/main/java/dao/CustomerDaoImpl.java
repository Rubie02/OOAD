package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.DBConnection;
import entity.Customer;

public class CustomerDaoImpl extends DBConnection implements ICustomerDao{
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	@Override
	public Customer get(int id) {
		
				String query = "SELECT * FROM Customers WHERE cusId=?";
		try {
			conn = new DBConnection().getConnectionW();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
						rs.getString(6));
			}
		} catch (Exception e) {

		}
		return null;
	}

}
