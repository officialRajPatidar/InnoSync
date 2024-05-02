package in.co.online.project.submission.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import in.co.online.project.submission.bean.BaseBean;
import in.co.online.project.submission.bean.TeamBean;
import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.TeamModel;

/**
 * Servlet implementation class AddTeamCtl
 */
public class AddTeamCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTeamCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/jsp/AddTeam.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    TeamBean bean = new TeamBean();
	  
	    bean.setTeamName(request.getParameter("teamName"));
	    bean.setTeamGuide(request.getParameter("teamGuide"));
	    bean.setClassName(request.getParameter("className"));
	  
	  
	   BaseBean userBean = (UserBean) request.getSession().getAttribute("userbean");
		//System.out.println(userBean.toString());
	   bean.setFacultyId(userBean.getId());
		//System.out.println(bean.getFacultyId());

	  TeamModel model = new TeamModel();
	  long pk = model.addTeam(bean);
	  if(pk>0) {
		  request.setAttribute("success", "Team Added...!");
		  
	  }
	  else {
		  request.setAttribute("err", "team is not added..!");
	  }
		request.getRequestDispatcher("/jsp/AddTeam.jsp").forward(request, response);
	   
	}

}
