package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class LoginCtl
 */
public class LoginCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		if(session!=null)
		{
		session.invalidate();
		//response.sendRedirect("/Online-Project-Submisssion/LoginCtl");
		request.getRequestDispatcher("/jsp/LoginView.jsp").forward(request, response);
  
		}else {
			
			request.getRequestDispatcher("/jsp/LoginView.jsp").forward(request, response);

		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			System.out.println("in post");
			if (validate(request)) {
				UserBean userbean = new UserBean();
				userbean.setEmail(request.getParameter("email"));
				userbean.setPassword(request.getParameter("pass"));
				UserModel model = new UserModel();
				userbean = model.login(userbean);

				if (userbean != null) {
					HttpSession session = request.getSession(true);
		
					session.setAttribute("userbean", userbean); 

					response.sendRedirect("/Online-Project-Submisssion/WellcomeCtl");
				} else {

					request.setAttribute("error", "Invalid email or password.");
					request.getRequestDispatcher("/jsp/LoginView.jsp").forward(request, response);
					
				}

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private boolean validate(HttpServletRequest request) {
		boolean test = true;

		if (request.getParameter("email") == null || "".equals(request.getParameter("email"))) {
			request.setAttribute("email", "email feild is empty");
			test = false;
		}
		if (request.getParameter("pass") == null || "".equals(request.getParameter("pass"))) {
			request.setAttribute("pass", "pass field is empty");
			test = false;
		}

		return test;
	}

}
