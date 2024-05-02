package in.co.online.project.submission.ctl;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.online.project.submission.model.ProjectModel;


public class ViewPPTServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long projectId = Long.parseLong(request.getParameter("projectId"));

        ProjectModel projectModel = new ProjectModel();
        try {
            Blob pptBlob = projectModel.getProjectPPT(projectId);
            if (pptBlob != null) {
                response.setContentType("application/vnd.ms-powerpoint");
                response.setHeader("Content-Disposition", "inline; filename=presentation.ppt");

                OutputStream out = response.getOutputStream();
                out.write(pptBlob.getBytes(1, (int) pptBlob.length()));
                out.flush();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
