package edu.acc.itsx7051.Project03;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/main")
public class FrontController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = "";
        String requestAction = request.getParameter("action");
        if (requestAction != null) {
            action = requestAction;
        }
        switch (action) {
            case "InvalidateSession":
                InvalidateSession(request);break;
        }
        request.getRequestDispatcher("/WEB-INF/counter.jsp")
                .forward(request, response);
    }

    private void InvalidateSession(HttpServletRequest request) {
        request.getSession().invalidate();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
