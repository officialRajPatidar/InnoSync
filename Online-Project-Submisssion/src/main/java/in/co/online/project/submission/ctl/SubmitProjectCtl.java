package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.Blob;

import in.co.online.project.submission.bean.BaseBean;
import in.co.online.project.submission.bean.ProjectBean;
import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.ProjectModel;
import in.co.online.project.submission.model.TeamModel;

/**
 * Servlet implementation class SubmitProjectCtl
 */

@MultipartConfig
public class SubmitProjectCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitProjectCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	request.getRequestDispatcher("/jsp/SubmitProject.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProjectBean bean =new ProjectBean();
		
		bean.setTeamName(request.getParameter("teamName"));
		bean.setGuideName(request.getParameter("guideName"));
		bean.setProjectName(request.getParameter("projectName"));
		bean.setProjectProblem(request.getParameter("projectDescription"));
		   bean.setGithupUrl(request.getParameter("githubURL"));

		   BaseBean userBean = (UserBean) request.getSession().getAttribute("userbean");

		   bean.setStudent_id(userBean.getId());
		   
		
       
        Part projectppt = request.getPart("projectPPT");
        InputStream inputStream = projectppt.getInputStream();
        byte[] ppt = inputStream.readAllBytes();
	  bean.setProjectPpt(ppt);

	   ProjectModel model = new ProjectModel();
		  long pk = model.addProject(bean);
		  if(pk>0) {
			  request.setAttribute("success", "Details are submitted...!");
			  
		  }
		  else {
			  request.setAttribute("err", "Details aree not added..!");
		  }
			request.getRequestDispatcher("/jsp/SubmitProject.jsp").forward(request, response);
		   
		}
	
	
}

