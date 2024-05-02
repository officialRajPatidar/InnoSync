package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class DeleteFacultyCtl
 */
public class DeleteFacultyCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteFacultyCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			long id = Long.parseLong(request.getParameter("id"));

			UserModel model = new UserModel();

			boolean isDeleted = model.delete(id);

			if (isDeleted) {
				request.setAttribute("success", "Faculty is deleted Successfully..!");
			} else {
				request.setAttribute("error", "User deletion failed.");
			}

			List<UserBean> list = model.list();

			request.setAttribute("list", list);
		} catch (Exception e) {

		}

		request.getRequestDispatcher("/jsp/ViewFaculty.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
