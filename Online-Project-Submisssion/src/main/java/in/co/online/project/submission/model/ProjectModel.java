package in.co.online.project.submission.model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Blob;
import java.sql.ResultSet;




import in.co.online.project.submission.bean.ProjectBean;

public class ProjectModel {

    public long addProject(  ProjectBean bean) {
    	long pk=0;
    	try {
        Connection con = Model.getCon();
        PreparedStatement stmt=null;
  

        
           stmt =con.prepareStatement("insert into project_details (teamName, guideName, projectName, projectDescription, projectPPT, githubURL, student_id) " +
                                "VALUES (?, ?, ?, ?, ?, ?, ?)");

           
                stmt.setString(1,bean.getTeamName());
                stmt.setString(2, bean.getGuideName());
                stmt.setString(3, bean.getTeamName());
                stmt.setString(4, bean.getProjectProblem());                
                stmt.setBytes(5, bean.getProjectPpt());
                stmt.setString(6, bean.getGithupUrl());
                stmt.setLong(7, bean.getStudent_id());

                
            pk= stmt.executeUpdate();
            }
         catch (SQLException e) {
            e.printStackTrace();
           
        }
        return pk;
    }
    
    
    public List<ProjectBean> list() throws SQLException {
        ProjectBean projectBean = null;
        Connection con = null;
        con = Model.getCon();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM project_details");
        ResultSet rs = ps.executeQuery();
        ArrayList<ProjectBean> list = new ArrayList<ProjectBean>();
        while (rs.next()) {
            projectBean = new ProjectBean();
            projectBean.setId(rs.getLong(1));
            projectBean.setTeamName(rs.getString(2));
            projectBean.setGuideName(rs.getString(3));
            projectBean.setProjectName(rs.getString(4));
            projectBean.setProjectProblem(rs.getString(5));
            projectBean.setProjectPpt(rs.getBytes(6));
            projectBean.setGithupUrl(rs.getString(7));
            projectBean.setStudent_id(rs.getLong(8));
            
            list.add(projectBean);
        }
        return list;
    }

    public Blob getProjectPPT(long projectId) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Blob pptBlob = null;
        try {
            con = Model.getCon();
            ps = con.prepareStatement("SELECT projectPPT FROM project_details WHERE id = ?");
            ps.setLong(1, projectId);
            rs = ps.executeQuery();
            if (rs.next()) {
                pptBlob = rs.getBlob("projectPPT");
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return pptBlob;
    }
}

