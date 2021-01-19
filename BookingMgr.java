package steakhouse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookingMgr {

	private DBConnectionMgr pool;

	public BookingMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 예약 추가 
	public boolean insertBooking(BookingBean bean) {
		Connection connection = null;
		PreparedStatement statement = null;
		String sql = null;
		boolean flag = false;
		try {
			connection = pool.getConnection();
			sql = "insert bookingtbl(name,phone,bookedDate,bookedTime) values(?,?,?,?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, bean.getName());
			statement.setString(2, bean.getPhone());
			statement.setString(3, bean.getDate());
			statement.setString(4, bean.getTime());

			if (statement.executeUpdate() == 1)
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			pool.freeConnection(connection, statement);
		}
		return flag;
	}
	// 예약 가져와 

	public String getBooking(String name, String phone) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		String time = "";
		String date = "";
		try {
			connection = pool.getConnection();
			String sql = "select count(*),bookedDate,bookedTime from bookingtbl where name =? and phone = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, name);
			statement.setString(2, phone);
			rs = statement.executeQuery();

			if (rs.next() && rs.getInt(1) > 0) {
				date = rs.getString(2);
				time = rs.getString(3);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(connection, statement, rs);
		}
		return date + ", "+time;
	}

	// 중복 확인
	public boolean checkPhone(String phone) {
		Connection connection = null;
		PreparedStatement statement = null;
		boolean flag = false;
		try {
			connection = pool.getConnection();
			String sql = "select phone from bookingtbl where phone =? ";
			statement = connection.prepareStatement(sql);
			statement.setString(1, phone);
			flag = statement.executeQuery().next();//중복 => true

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(connection, statement);
		}
		return flag;
	}

}
