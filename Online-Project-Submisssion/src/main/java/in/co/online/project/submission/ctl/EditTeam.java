package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.bean.BaseBean;
import in.co.online.project.submission.bean.TeamBean;
import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.TeamModel;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class EditTeam
 */
public class EditTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTeam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 try {
	        	TeamModel model=new TeamModel();
	        	long id = Long.parseLong(request.getParameter("id"));
	        	// Assuming you have a parameter for the row to delete	        	
	        	if(id>0) {
	        		TeamBean bean = model.findById(id);
	        		request.setAttribute("bean",bean);	
	        	}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        request.getRequestDispatcher("/jsp/EditTeam.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
		TeamBean bean = new TeamBean();
		  
		 long id =Long.parseLong( request.getParameter("id"));
		 bean.setId(id) ;
	    bean.setTeamName(request.getParameter("teamName"));
	    bean.setTeamGuide(request.getParameter("teamGuide"));
	    bean.setClassName(request.getParameter("className"));
	  
	  
	   BaseBean userBean = (UserBean) request.getSession().getAttribute("userbean");
		//System.out.println(userBean.toString());
	   bean.setFacultyId(userBean.getId());
		//System.out.println(bean.getFacultyId());

	
	  TeamModel model = new TeamModel();
	 
	 
	   
		if(id>0) {
			  boolean isUpdate  = model.updateTeam(bean);
			  if(isUpdate) {
	    		   request.setAttribute("succ", "Faculty details are updated..!");

			  }
		  }
		  List<TeamBean>list = model.list(id);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/jsp/TeamView.jsp").forward(request, response);

	
	} catch (Exception e) {
		// TODO: handle exception
	}

	}
}
