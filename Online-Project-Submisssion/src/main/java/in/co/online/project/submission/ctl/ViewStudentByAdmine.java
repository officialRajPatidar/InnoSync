package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.model.UserModel;

/**
 * Servlet implementation class ViewStudentByAdmine
 */
public class ViewStudentByAdmine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewStudentByAdmine() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 UserModel model = new UserModel();
		 
		   
			try {
				List list=	model.listStu2();
				if(list!=null &&  list.size()>0){
				request.setAttribute("list",list);
				request.getRequestDispatcher("jsp/ViewStudent.jsp").forward(request, response);
				}else{
					request.setAttribute("err","Record Not Found");
					request.getRequestDispatcher("jsp/ViewStudent.jsp").forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
