package steakhouse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class ReviewMgr {

	private DBConnectionMgr pool;
	private Connection conn;
	private ResultSet rs;

	public ReviewMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 후기 추가
	public boolean insertReview(ReviewBean bean) {
		PreparedStatement pstmt = null;
		String sql = "insert reviewtbl(title,nickname,visitDate,details) values(?,?,?,?)";
		boolean flag = false;
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getNickname());
			pstmt.setString(3, bean.getVisitDate());
			pstmt.setString(4, bean.getDetails());
			if (pstmt.executeUpdate() == 1)
				flag = true;
			if(bean.getVisitDate().equals("null")|| bean.getVisitDate().equals("")) {
				pstmt.setString(3, "날짜가 왜 안뜨니");
			}
			

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			pool.freeConnection(conn, pstmt);
		}
		return flag;
	}
	
	//하나씩 ?
	public ReviewBean getEach(int num) {
		ReviewBean rvBean = new ReviewBean();
		PreparedStatement pstmt = null;
		String sql = "select * from reviewtbl where num= " + num;
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				rvBean.setDetails(rs.getString("details"));
				rvBean.setTitle(rs.getString("title"));
				rvBean.setNickname(rs.getString("nickname"));
				rvBean.setVisitDate(rs.getString("visitDate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		return rvBean;
	}
	
	
	//후기 리스트
	public Vector<ReviewBean> getList(){
		PreparedStatement pstmt = null;
		Vector<ReviewBean> vlist = new Vector<ReviewBean>();
		try {
			conn = pool.getConnection();
			String sql = "select * from reviewtbl order by num desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewBean rvBean = new ReviewBean();	
				rvBean.setTitle(rs.getString("title"));
				rvBean.setDetails(rs.getString("details"));
				rvBean.setNickname(rs.getString("nickname"));
				rvBean.setVisitDate(rs.getString("visitDate"));
				vlist.add(rvBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		return vlist;
	}



}
