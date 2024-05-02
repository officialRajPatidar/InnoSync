package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.Session;

import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class DeleteStudentCtl
 */
public class DeleteStudentCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStudentCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			long id = Long.parseLong(request.getParameter("id"));

			UserModel model = new UserModel();

			
			
			
			boolean isDeleted = model.delete(id);

			if (isDeleted) {
				request.setAttribute("success", "Student is deleted Successfully..!");
			} else {
				request.setAttribute("error", "User deletion failed.");
			}
			UserBean userBean = (UserBean) request.getSession().getAttribute("userbean");
			   
			 long id1 =     userBean.getId();

			List<UserBean> list = model.listStu(id1);

			request.setAttribute("list", list);
		} catch (Exception e) {

		}

		request.getRequestDispatcher("/jsp/ViewStudent.jsp").forward(request, response);
	}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
