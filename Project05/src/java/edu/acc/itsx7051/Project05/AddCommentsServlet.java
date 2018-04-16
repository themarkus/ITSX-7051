package edu.acc.itsx7051.Project05;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addcomments")
public class AddCommentsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/Views/addComments.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String commentText = req.getParameter("commentText");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String timestamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());

        if (commentText == null || commentText.length() == 0) {
            req.setAttribute("error", "You didn't enter a comment");
            req.getRequestDispatcher("/WEB-INF/Views/addComments.jsp").forward(req, resp);
        } else {
            CommentsManager commentsManager = (CommentsManager) getServletContext().getAttribute("commentsManager");
            commentsManager.addComments(new Comments(commentText, name, email, timestamp));
            //commentsManager.addComments(new Comments(commentText));
            resp.sendRedirect("/Project05/viewcomments");
        }
    }
}
