package in.co.online.project.submission.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.validator.PublicClassValidator;

import in.co.online.project.submission.bean.BaseBean;
import in.co.online.project.submission.bean.RoleBean;
import in.co.online.project.submission.bean.UserBean;

public class UserModel {

	public UserBean findById(Long id) throws SQLException {
		ResultSet rs = null;
		UserBean bean = null;
		Connection conn = null;
		// ArrayList<UserBean> list = new ArrayList<UserBean>();
		conn = Model.getCon();
		PreparedStatement ps = conn.prepareStatement("select * from user where id=?");
		ps.setLong(1, id);
		rs = ps.executeQuery();
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setPhoneNo(rs.getString(4));
			bean.setEmail(rs.getString(5));
			bean.setUsername(rs.getString(6));
			bean.setPassword(rs.getString(7));
			bean.setRoleId(rs.getLong(8));
			// bean.setCreatedby(rs.getString(8));
			// bean.setModifiedBy(rs.getString(10));
			// bean.setCreateDateTime(rs.getTimestamp(11));
			// bean.setModifiedDateTime(rs.getTimestamp(12));

		}
		// list.add(bean);

		return bean;
	}

	public UserBean findByRoleId(Long roleid) throws SQLException {
		ResultSet rs = null;
		UserBean bean = null;
		Connection conn = null;
		ArrayList<UserBean> list = new ArrayList<UserBean>();
		conn = Model.getCon();
		PreparedStatement ps = conn.prepareStatement("select * from user where roleid=?");
		ps.setLong(1, roleid);
		rs = ps.executeQuery();
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setEmail(rs.getString(4));
			bean.setPassword(rs.getString(5));
			bean.setPhoneNo(rs.getString(6));
			bean.setRoleId(rs.getLong(7));
			bean.setCreatedby(rs.getString(8));
			bean.setModifiedBy(rs.getString(10));
			bean.setCreateDateTime(rs.getTimestamp(11));
			bean.setModifiedDateTime(rs.getTimestamp(12));
		}
		list.add(bean);
		System.out.println(list);

		return bean;
	}

	public UserBean findByEmail(String email) throws SQLException {
		ResultSet rs = null;
		UserBean bean = null;
		Connection conn = null;
		ArrayList<UserBean> list = new ArrayList<UserBean>();
		conn = Model.getCon();
		PreparedStatement ps = conn.prepareStatement("select * from user where email=?");
		ps.setString(1, email);
		rs = ps.executeQuery();
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setEmail(rs.getString(4));
			bean.setPassword(rs.getString(5));
			bean.setPhoneNo(rs.getString(6));
			bean.setRoleId(rs.getLong(7));
			bean.setCreatedby(rs.getString(8));
			bean.setModifiedBy(rs.getString(10));
			bean.setCreateDateTime(rs.getTimestamp(11));
			bean.setModifiedDateTime(rs.getTimestamp(12));
		}
		list.add(bean);
		System.out.println(list);

		return bean;
	}

	public UserBean findByUserName(String username) throws SQLException {
		ResultSet rs = null;
		UserBean bean = null;
		Connection conn = null;
		ArrayList<UserBean> list = new ArrayList<UserBean>();
		conn = Model.getCon();
		PreparedStatement stmt = conn.prepareStatement("select * from user where roleid=?");
		stmt.setString(1, username);
		rs = stmt.executeQuery();
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setEmail(rs.getString(4));
			bean.setPassword(rs.getString(5));
			bean.setPhoneNo(rs.getString(6));
			bean.setRoleId(rs.getLong(7));
			bean.setCreatedby(rs.getString(8));
			bean.setModifiedBy(rs.getString(10));
			bean.setCreateDateTime(rs.getTimestamp(11));
			bean.setModifiedDateTime(rs.getTimestamp(12));
		}
		list.add(bean);
		System.out.println(list);

		return bean;
	}

	public List<UserBean> list() throws SQLException {
		System.out.println("in list");

		UserBean bean = null;
		Connection conn = null;

		conn = Model.getCon();
		PreparedStatement ps = conn.prepareStatement("select * from user  where roleid=2");
		ResultSet rs = ps.executeQuery();
		ArrayList<UserBean> list = new ArrayList<>();
		System.out.println("in model list");
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setPhoneNo(rs.getString(4));
			bean.setEmail(rs.getString(5));
			bean.setUsername(rs.getString(6));
			bean.setPassword(rs.getString(7));
			bean.setRoleId(rs.getLong(8));
			bean.setCreatedby(rs.getString(9));
			bean.setModifiedBy(rs.getString(10));
			bean.setCreateDateTime(rs.getTimestamp(11));
			bean.setModifiedDateTime(rs.getTimestamp(12));
			list.add(bean);

		}
		System.out.println("list:" + list);

		return list;
	}
//view student 
	
	public List<UserBean> listStu(long facultyId) throws SQLException {
	    System.out.println("in list");

	    UserBean bean = null;
	    Connection conn = null;

	    conn = Model.getCon();
	    PreparedStatement ps = conn.prepareStatement("SELECT u.* from user u "
	            + "inner join student_faculty_mapping spf on spf.studentid=u.id "
	            + "where spf.facultyid=?");
	    ps.setLong(1, facultyId);
		ResultSet rs = ps.executeQuery();
		ArrayList<UserBean> list = new ArrayList<>();
		System.out.println("in model list");
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setPhoneNo(rs.getString(4));
			bean.setEmail(rs.getString(5));
			bean.setUsername(rs.getString(6));
			bean.setPassword(rs.getString(7));
			bean.setRoleId(rs.getLong(8));
			bean.setCreatedby(rs.getString(9));
			bean.setModifiedBy(rs.getString(10));
			bean.setCreateDateTime(rs.getTimestamp(11));
			bean.setModifiedDateTime(rs.getTimestamp(12));
			
			list.add(bean);
		}
		
		System.out.println("list:" + list);

		return list;
	}

	
	
	public List<UserBean> listStu2() throws SQLException {
		System.out.println("in list");

		UserBean bean = null;
		Connection conn = null;

		conn = Model.getCon();
		PreparedStatement ps = conn.prepareStatement("select * from user  where roleid=3");
		ResultSet rs = ps.executeQuery();
		ArrayList<UserBean> list = new ArrayList<>();
		System.out.println("in model list");
		while (rs.next()) {
			bean = new UserBean();
			bean.setId(rs.getLong(1));
			bean.setFistName(rs.getString(2));
			bean.setLastName(rs.getString(3));
			bean.setPhoneNo(rs.getString(4));
			bean.setEmail(rs.getString(5));
			bean.setUsername(rs.getString(6));
			bean.setPassword(rs.getString(7));
			bean.setRoleId(rs.getLong(8));
			bean.setCreatedby(rs.getString(9));
			bean.setModifiedBy(rs.getString(10));
			bean.setCreateDateTime(rs.getTimestamp(11));
			bean.setModifiedDateTime(rs.getTimestamp(12));
			
			list.add(bean);
		}
		
		System.out.println("list:" + list);

		return list;
	}

	
	
	
	
	
	
	
	
	
	
	public Long findMaxId() throws Exception {
		UserBean bean = null;
		Connection con = null;
		con = Model.getCon();
		long maxId=0;
		PreparedStatement stmt = con.prepareStatement("select max(id) from user");
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			maxId = rs.getLong(1);
			System.out.println("Max ID: " + maxId);
		}

		return maxId;

	}

	public UserBean login(UserBean ub) {
		Connection con = null;
		ResultSet rs = null;
		UserBean userbean = null;
		try {
			con = Model.getCon();
			PreparedStatement stmt = con.prepareStatement("select * from user where email =? and password=?");
			stmt.setString(1, ub.getEmail());
			stmt.setString(2, ub.getPassword());
			rs = stmt.executeQuery();
			System.out.println("in model");
			while (rs.next()) {
				userbean = new UserBean();
				userbean.setId(rs.getLong(1));
				userbean.setFistName(rs.getString(2));
				userbean.setLastName(rs.getString(3));
				userbean.setPhoneNo(rs.getString(4));
				userbean.setEmail(rs.getString(5));
				userbean.setUsername(rs.getString(6));
				userbean.setPassword(rs.getString(7));
				userbean.setRoleId(rs.getLong(8));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return userbean;

	}

	public long addFaculty(UserBean ub) {
		Connection con = null;

		PreparedStatement stmt = null;

		long pk = 0;
		try {
			con = Model.getCon();
			stmt = con.prepareStatement("select email from user where email=?");
			stmt.setString(1, ub.getEmail());
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				pk = 0;
			} else {

				stmt = con.prepareStatement(
						"insert into user  (firstname,lastname,phoneno,email,username,password,roleid,createdby,modifiedby,createdatetime,modifieddatetime) values(?,?,?,?,?,?,?,'Admine','Admine', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)");
				stmt.setString(1, ub.getFistName());
				stmt.setString(2, ub.getLastName());
				stmt.setString(3, ub.getPhoneNo());
				stmt.setString(4, ub.getEmail());
				stmt.setString(5, ub.getUsername());
				stmt.setString(6, ub.getPassword());
				stmt.setLong(7, ub.getRoleId());

				pk = stmt.executeUpdate();
				System.out.println("name:" + ub.getFistName());
				mapping(findMaxId(),ub.getTeam_id());
				UserBean bean = new UserBean();
				mappingStudent(findMaxId(), ub.getFacultyId());
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return pk;
	}
	
	public long mapping(long studentId,long teanId) throws SQLException {
		
		long pk =0;
		try {
		Connection con = Model.getCon();
		PreparedStatement stmt ;
		stmt= con.prepareStatement("insert into student_team_mapping (Student_id, team_id) values (?,?)");
		System.out.println("s id="+studentId);
		System.out.println("t id="+teanId);
		stmt.setLong(1, studentId);
		stmt.setLong(2, teanId);
		pk=stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		
		return pk;
		
	}
	
public long mappingStudent(long studentId,long facultyId) throws SQLException {
		
		long pk =0;
		try {
		Connection con = Model.getCon();
		PreparedStatement stmt ;
		stmt= con.prepareStatement("insert into student_faculty_mapping (studentid, facultyid) values (?,?)");
		System.out.println("s id="+studentId);
		System.out.println("f id="+facultyId);
		stmt.setLong(1, studentId);
		stmt.setLong(2, facultyId);
		pk=stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		
		return pk;
		
	}

	public boolean delete(long id) {
		Connection con = Model.getCon();
		boolean pass = false;
		try {
			PreparedStatement stmt;
			stmt = con.prepareStatement("delete from user where id=?");
			stmt.setLong(1, id);
			int row = stmt.executeUpdate();
			if (row > 0) {
				pass = true;
			} else {
				pass = false;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return pass;

	}

	public boolean updateFaculty(UserBean ub) {

		boolean pass = false;

		Connection con = Model.getCon();

		try {
			PreparedStatement stmt;

			stmt = con.prepareStatement(
					"update user set firstname=?,lastname=?,phoneno=?,email=?,username=?,password=?,roleid=?,createdby='Admine',modifiedby='Admine',createdatetime=CURRENT_TIMESTAMP,modifieddatetime=CURRENT_TIMESTAMP where id=? ");
			stmt.setString(1, ub.getFistName());
			stmt.setString(2, ub.getLastName());
			stmt.setString(3, ub.getPhoneNo());
			stmt.setString(4, ub.getEmail());
			stmt.setString(5, ub.getUsername());
			stmt.setString(6, ub.getPassword());
			stmt.setLong(7, ub.getRoleId());
            stmt.setLong(8, ub.getId());
            int pk = stmt.executeUpdate();
			if (pk > 0) {
				pass = true;
			} else {
				pass = false;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return pass;
	}
	public static void main(String arg[]) throws Exception {
		// TODO Auto-generated method stub

		UserModel obj = new UserModel();
		obj.list();
		obj.findById((long) 1);
		obj.findByEmail("raj@gmail.com");
		obj.findByRoleId((long) 2);
		obj.findMaxId();
	}

}
