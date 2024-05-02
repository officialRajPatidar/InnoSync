package in.co.online.project.submission.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.validator.PublicClassValidator;

import in.co.online.project.submission.bean.TeamBean;
import in.co.online.project.submission.bean.UserBean;

public class TeamModel {
public long addTeam (TeamBean bean) {
	PreparedStatement stmt;
	long pk =0;
try {	

	Connection con = Model.getCon();
	/*stmt = con.prepareStatement("select teamName from team where teamName=?");
	stmt.setString(1, bean.getTeamName());
	ResultSet rs = stmt.executeQuery();
	if(rs.next()) {
		pk=0;
	}else {*/
	stmt = con.prepareStatement("insert into team (teamName, teamGuide, facultyId ,createdby,modifiedby,createdatetime,modifieddatetime,className) values(?,?,?,'Faculty','Faculty', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,?)");
	stmt.setString(1, bean.getTeamName());
	stmt.setString(2, bean.getTeamGuide());
	stmt.setLong(3, bean.getFacultyId());
	stmt.setString(4, bean.getClassName());
	pk = stmt.executeUpdate();
	System.out.println("in team model");
	//}
} catch (Exception e) {
	// TODO: handle exception
}
	
	return pk;	
}

public List<TeamBean> list(long facultyId) throws SQLException{
	TeamBean teambean = null;
	Connection con = null;
	con = Model.getCon();
	PreparedStatement ps = con.prepareStatement("SELECT * FROM innosync.team where facultyId=?;");
	ps.setLong(1, facultyId);
	ResultSet rs = ps.executeQuery();
	ArrayList<TeamBean> list = new ArrayList<TeamBean>();
	while(rs.next()) {
		teambean = new TeamBean();
		teambean.setId(rs.getLong(1));
		teambean.setTeamName(rs.getString(2));
		teambean.setTeamGuide(rs.getString(3));
	    teambean.setFacultyId(rs.getLong(4));
		teambean.setCreatedby(rs.getString(5));
		teambean.setModifiedBy(rs.getString(6));
		teambean.setCreateDateTime(rs.getTimestamp(7));
		teambean.setModifiedDateTime(rs.getTimestamp(8));
		teambean.setClassName(rs.getString(9));
		list.add(teambean);
		
		
	}
	
	
	
	return list;
	
	
}



public List<TeamBean> list2() throws SQLException{
	TeamBean teambean = null;
	Connection con = null;
	con = Model.getCon();
	PreparedStatement ps = con.prepareStatement("SELECT * FROM innosync.team");

	ResultSet rs = ps.executeQuery();
	ArrayList<TeamBean> list = new ArrayList<TeamBean>();
	while(rs.next()) {
		teambean = new TeamBean();
		teambean.setId(rs.getLong(1));
		teambean.setTeamName(rs.getString(2));
		teambean.setTeamGuide(rs.getString(3));
	    teambean.setFacultyId(rs.getLong(4));
		teambean.setCreatedby(rs.getString(5));
		teambean.setModifiedBy(rs.getString(6));
		teambean.setCreateDateTime(rs.getTimestamp(7));
		teambean.setModifiedDateTime(rs.getTimestamp(8));
		teambean.setClassName(rs.getString(9));
		list.add(teambean);
		
		
	}
	
	
	
	return list;
	
	
}


public boolean delete(long id) {
	Connection con = Model.getCon();
	boolean pass = false;
	try {
		PreparedStatement stmt;
		stmt = con.prepareStatement("delete from team where id=?");
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


public TeamBean findById(Long id) throws SQLException {
	ResultSet rs = null;
	TeamBean teambean = null;
	Connection conn = null;
	// ArrayList<UserBean> list = new ArrayList<UserBean>();
	conn = Model.getCon();
	PreparedStatement ps = conn.prepareStatement("select * from team where id=?");
	ps.setLong(1, id);
	rs = ps.executeQuery();
	while (rs.next()) {
		teambean = new TeamBean();
		teambean = new TeamBean();
		teambean.setId(rs.getLong(1));
		teambean.setTeamName(rs.getString(2));
		teambean.setTeamGuide(rs.getString(3));
	    teambean.setFacultyId(rs.getLong(4));
		teambean.setCreatedby(rs.getString(5));
		teambean.setModifiedBy(rs.getString(6));
		teambean.setCreateDateTime(rs.getTimestamp(7));
		teambean.setModifiedDateTime(rs.getTimestamp(8));
		teambean.setClassName(rs.getString(9));

	}
	// list.add(bean);

	return teambean;
}

public static String findByStudentId(Long id) throws SQLException {
	ResultSet rs = null;
	TeamBean teambean = null;
	Connection conn = null;
	conn = Model.getCon();
	PreparedStatement ps = conn.prepareStatement("SELECT teamName from user u \r\n"
			+ "inner join student_team_mapping stm on stm.Student_id=u.id\r\n"
			+ "inner join team t on t.id=stm.team_id\r\n"
			+ "where u.id in (?)");
	ps.setLong(1, id);
	rs = ps.executeQuery();
	String name=null;
	while (rs.next()) {
		name=rs.getString(1);

	}
	// list.add(bean);

	return name;
}

public boolean updateTeam(TeamBean tb) {

	boolean pass = false;

	Connection con = Model.getCon();

	try {
		PreparedStatement stmt;
System.out.println("IN UPDATE");
		stmt = con.prepareStatement(
				"update team set teamName=?,teamGuide=?,facultyId=?,className=?,createdby='Faculty',modifiedby='Faculty',createdatetime=CURRENT_TIMESTAMP,modifieddatetime=CURRENT_TIMESTAMP where id=? ");
		
		stmt.setString(1, tb.getTeamName());
		System.out.println(tb.getTeamName()+" "+tb.getId());
		stmt.setString(2,tb.getTeamGuide());
		stmt.setLong(3, tb.getFacultyId());
		stmt.setString(4, tb.getClassName());
		stmt.setLong(5, tb.getId());
        int pk = stmt.executeUpdate();
		if (pk > 0) {
			pass = true;
		} else {
			pass = false;
		}

	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return pass;
}

}
