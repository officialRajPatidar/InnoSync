package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class EditFacultyCtl
 */
public class EditFacultyCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFacultyCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 try {
	        	UserModel model=new UserModel();
	        	long id = Long.parseLong(request.getParameter("id"));
	        	// Assuming you have a parameter for the row to delete	        	
	        	if(id>0) {
	        		UserBean bean = model.findById(id);
	        		request.setAttribute("bean",bean);	
	        	}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        request.getRequestDispatcher("/jsp/EditFaculty.jsp").forward(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
		UserBean bean = new UserBean();
		 UserModel model = new UserModel();
		 long id =Long.parseLong( request.getParameter("id"));
		 bean.setId(id) ;
		 bean.setFistName(request.getParameter("firstName"));
		    bean.setLastName(request.getParameter("lastName"));
		    bean.setPhoneNo(request.getParameter("phoneNo"));
		    bean.setEmail(request.getParameter("email"));
		    bean.setUsername(request.getParameter("username"));
		    bean.setPassword(request.getParameter("password"));
		    bean.setRoleId(2);
		  if(id>0) {
			  boolean isUpdate  = model.updateFaculty(bean);
			  if(isUpdate) {
	    		   request.setAttribute("succ", "Faculty details are updated..!");
  
			  }
		  }
		  List<UserBean>list = model.list();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/jsp/ViewFaculty.jsp").forward(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

			
		


	
	
	}
}
