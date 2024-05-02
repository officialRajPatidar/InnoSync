package in.co.online.project.submission.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.bean.BaseBean;
import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class AddStudentCtl
 */
public class AddStudentCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		    
		    
	request.getRequestDispatcher("/jsp/AddStudent.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub

	    UserBean bean = new UserBean();
		bean.setTeam_id(Long.parseLong(request.getParameter("id"))); 
	    bean.setFistName(request.getParameter("firstName"));
	    bean.setLastName(request.getParameter("lastName"));
	    bean.setPhoneNo(request.getParameter("phoneNo"));
	    bean.setEmail(request.getParameter("email"));
	    bean.setUsername(request.getParameter("username"));
	    bean.setPassword(request.getParameter("password"));
	    bean.setRoleId(3);
	   UserBean userBean = (UserBean) request.getSession().getAttribute("userbean");
	   System.out.println(userBean.toString());
	   System.out.println(userBean.getId());
	    bean.setFacultyId(userBean.getId());
	    System.out.println("fn:" + bean.getFistName()+bean.getRoleId());
	    
	    if(vailedate(request)) {

			UserModel model= new UserModel();

		long pk = model.addFaculty(bean);

			System.out.println("pk: " + pk);

			
			if (pk==0) {
            
		    request.setAttribute("error", "email Already exiss..!");
			}
			if(pk>0) {
			request.setAttribute("success","Added successfully......!");
			
			}
			request.getRequestDispatcher("/jsp/AddStudent.jsp").forward(request, response);
		
	}else {
		request.setAttribute("error", "something went wrong");
		request.getRequestDispatcher("/jsp/AddStudent.jsp").forward(request, response);

		}
	}

	private boolean vailedate(HttpServletRequest request) {
		boolean field = true;
		if (request.getParameter("firstName") == null ||  "".equals(request.getParameter("firstName")) ){
			request.setAttribute("firstName", "firstname field is empty");
            field = false;
			//request.setAttribute("vailedation", val);
			//RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/ragistration.jsp");
		}
		if (request.getParameter("lastName") == null ||  "".equals(request.getParameter("lastName")) ){
			request.setAttribute("lastName", "lastname field is empty");
            field = false;
			
		}
		if(request.getParameter("phoneNo")==null || "".equals(request.getParameter("phoneNo"))) {
			request.setAttribute("phoneNo", "empty phoneNo field");
			field = false;
		
		}
		if (request.getParameter("email") == null || "".equals(request.getParameter("email"))) {
			request.setAttribute("email", "email feild is empty");
			field = false;
		}
		if (request.getParameter("username") == null || "".equals(request.getParameter("username"))) {
			request.setAttribute("username", "username field is empty");
			field= false;
		}
		if (request.getParameter("password") == null || "".equals(request.getParameter("password"))) {
			request.setAttribute("password", "password field is empty");
			field= false;
		}
		return field;
	}
	}

