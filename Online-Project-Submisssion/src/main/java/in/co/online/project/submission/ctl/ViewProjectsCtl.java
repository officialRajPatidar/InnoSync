package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.bean.ProjectBean;
import in.co.online.project.submission.bean.UserBean;
import in.co.online.project.submission.model.ProjectModel;

/**
 * Servlet implementation class ViewProjectsCtl
 */
public class ViewProjectsCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewProjectsCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProjectModel projectModel = new ProjectModel();
        try {
        	UserBean userBean = (UserBean) request.getSession().getAttribute("userbean");
			   
			 long fid =     userBean.getId();// Assuming faculty ID is stored in session
            List<ProjectBean> list = projectModel.alllist(fid);

            if (list != null && !list.isEmpty()) {
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
