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
        try {
            long teamId = Long.parseLong(request.getParameter("id"));

            TeamModel teamModel = new TeamModel();

            boolean isDeleted = teamModel.delete(teamId);

            if (isDeleted) {
                request.setAttribute("success", "Team is deleted successfully.");
            } else {
                request.setAttribute("error", "Team deletion failed.");
            }

            // Retrieve the list of teams (including remaining teams)
            UserBean userBean = (UserBean) request.getSession().getAttribute("userbean");
            long userId = userBean.getId();
            List<TeamBean> teamList = teamModel.list(userId); // Assuming you have a list method in TeamModel that retrieves teams by user ID

            request.setAttribute("list", teamList); // The attribute name should be "teamList", not "list"
        } catch (Exception e) {
            e.printStackTrace(); // Handle exceptions appropriately
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
