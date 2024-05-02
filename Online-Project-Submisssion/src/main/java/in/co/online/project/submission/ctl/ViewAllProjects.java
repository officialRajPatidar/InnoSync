package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.model.ProjectModel;

/**
 * Servlet implementation class ViewAllProjects
 */
public class ViewAllProjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAllProjects() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProjectModel projectModel = new ProjectModel();
		try {
			List list = projectModel.list();

			if (list != null && list.size() > 0) {
				request.setAttribute("list", list);
				request.getRequestDispatcher("jsp/ViewProject.jsp").forward(request, response);
			} else {
				request.setAttribute("err", "Record Not Found");
				request.getRequestDispatcher("jsp/ViewProject.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			// Handle the SQLException as needed (e.g., show an error page)
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
