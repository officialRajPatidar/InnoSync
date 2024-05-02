package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.bean.TeamBean;
import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.TeamModel;
import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class DeleteTeamCtl
 */
public class DeleteTeamCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteTeamCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			long id = Long.parseLong(request.getParameter("id"));

			TeamModel model = new TeamModel();

			boolean isDeleted = model.delete(id);

			if (isDeleted) {
				request.setAttribute("success", "Team is deleted Successfully..!");
			} else {
				request.setAttribute("error", "User deletion failed.");
			}

			List<TeamBean> list =  model.list(id);

			request.setAttribute("list", list);
		} catch (Exception e) {

		}

		request.getRequestDispatcher("/jsp/TeamView.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
