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

	// 예약하기
	public boolean insertBooking(BookingBean bean) {
		Connection connection = null;
		PreparedStatement statement = null;
		String sql = null;
		boolean flag = false;
		try {
			connection = pool.getConnection();
			sql = "insert bookingtbl(name,phone,bookedDate) values(?,?,?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, bean.getName());
			statement.setString(2, bean.getPhone());
			statement.setString(3, bean.getDate());

			if (statement.executeUpdate() == 1)
				flag = true;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			pool.freeConnection(connection, statement);
		}
		return flag;
	}

	// 예약확인
	public boolean isBooked(String name, String phone) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		boolean flag = false;

		try {
			connection = pool.getConnection();
			String sql = "select count(*) from bookingtbl where name =? and phone = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, name);
			statement.setString(2, phone);
			rs =statement.executeQuery();
			if(rs.next()&&rs.getInt(1)>0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(connection, statement, rs);
		}
		return flag;
	}
	

}
