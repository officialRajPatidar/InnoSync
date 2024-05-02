package in.co.online.project.submission.model;

import java.beans.beancontext.BeanContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.PreparableStatement;

import in.co.online.project.submission.bean.RoleBean;

public class RoleModel {

	public RoleBean findById(Long id) throws SQLException {
		ResultSet rs = null;
		RoleBean bean = null;	
		Connection conn = null;
		try {
			conn = Model.getCon();
			PreparedStatement ps = conn.prepareStatement("select * from role where id=?");
			ps.setLong(1, id);
			rs = ps.executeQuery();
			ArrayList<RoleBean> list = new ArrayList<RoleBean>();
			while (rs.next()) {
				bean = new RoleBean();
				bean.setId(rs.getLong(1));
				bean.setName(rs.getString(2));
				bean.setDescription(rs.getString(3));
				bean.setCreatedby(rs.getString(4));
				bean.setModifiedBy(rs.getString(5));
				bean.setCreateDateTime(rs.getTimestamp(6));
				bean.setModifiedDateTime(rs.getTimestamp(7));
				list.add(bean);
			}
			System.out.println(list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	
	public RoleBean list() throws Exception {
		RoleBean bean = null;
		Connection conn = null;
		conn = Model.getCon();
		//System.out.println("in list method");
		PreparedStatement ps = conn.prepareStatement("select * from role");
		ResultSet rs = ps.executeQuery();
		ArrayList<RoleBean> list = new ArrayList<>();

		while (rs.next()) {
			bean = new RoleBean();
			bean.setId(rs.getLong(1));
			bean.setName(rs.getString(2));
			bean.setDescription(rs.getString(3));
			bean.setCreatedby(rs.getString(4));
			bean.setModifiedBy(rs.getString(5));
			bean.setCreateDateTime(rs.getTimestamp(6));
			bean.setModifiedDateTime(rs.getTimestamp(7));
			list.add(bean);
			System.out.println(list+" ");
		}
		return null;
	}

	
	public Long findMaxId() throws Exception {
		RoleBean bean = null;
		Connection con = null;
		con = Model.getCon();
		PreparedStatement stmt =con.prepareStatement("select max(id) from role");
		 ResultSet rs = stmt.executeQuery();
		 if (rs.next()) {
	            long maxId = rs.getLong(1);
	            System.out.println("Max ID: " + maxId);
	        }
		
		return null;
		
	}
	 public static void main(String args[]) throws Exception {
		 
		 RoleModel obj = new RoleModel();
		 obj.findById((long) 2);
		 obj.list();
		 obj.findMaxId();
		
	 }
}
