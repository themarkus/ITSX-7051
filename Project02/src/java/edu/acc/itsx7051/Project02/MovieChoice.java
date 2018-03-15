package edu.acc.itsx7051.Project02;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/choice")
public class MovieChoice extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestChoice = request.getParameter("movie");
        Movie movieVerdict = giveVerdict(requestChoice);
        request.setAttribute("movieVerdict", movieVerdict);
        getServletContext().getRequestDispatcher("/WEB-INF/views/verdict.jsp").forward(request, response);
    }

    private Movie giveVerdict(String requestChoice) {
        String name = "error", verdict = "error", choice = "error";
        if (requestChoice != null) {
            choice = requestChoice;
        }
        switch (choice) {
            case "Bladerunner":
                name = "Bladerunner 2049";
                verdict = "Four Stars!";
                break;
            case "Machina":
                name = "Ex Machina";
                verdict = "Three Stars!";
                break;
            case "Force":
                name = "The Force Awakens";
                verdict = "Two Stars!";
                break;
            case "Jedi":
                name = "The Last Jedi";
                verdict = "One Star!";
                break;
            default:
                name = "error";
                verdict = "error";

        }
        return new Movie(name, verdict);
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
