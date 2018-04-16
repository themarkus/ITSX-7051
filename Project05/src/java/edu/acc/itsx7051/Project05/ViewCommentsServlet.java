package edu.acc.itsx7051.Project05;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewcomments")
public class ViewCommentsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        CommentsManager manager = (CommentsManager) getServletContext().getAttribute("commentsManager");
        
        request.setAttribute("enteredComments", manager.getAllComments());
        request.getRequestDispatcher("/WEB-INF/Views/viewComments.jsp").forward(request, response);
    }

}
