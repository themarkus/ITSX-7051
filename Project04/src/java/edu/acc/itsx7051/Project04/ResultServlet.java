package edu.acc.itsx7051.Project04;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/flip")
public class ResultServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/Views/Result.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*
        Create a way to handle the issue of what happens when a user just does a get instead of a post
         */
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String guess = request.getParameter("coinflip");
        String lastFlip = flipIt();
        Flip flipResult = tallyFlip(lastFlip, guess, request);
        request.setAttribute("flipResult", flipResult);

        if (lastFlip.equals("Heads")) {
            incrementHeadCounter(request);
        } else {
            incrementTailCounter(request);
        }

        processRequest(request, response);
    }

    private String flipIt() {
        String LastFlip;
        double RandomSeed;

        RandomSeed = Math.random();

        if (RandomSeed < 0.5) {
            LastFlip = "Heads";
        } else {
            LastFlip = "Tails";
        }
        return LastFlip;
    }

    private Flip tallyFlip(String lastFlip, String guess, HttpServletRequest request) {
        boolean goodGuess;

        goodGuess = guess.equals(lastFlip);
        Counter count = (Counter) request.getSession().getAttribute("winCounter");
        if (count == null) {
            count = new Counter();
            request.getSession().setAttribute("winCounter", count);
        }
        if (goodGuess == true) {
            count.incrementCount();
        }

        return new Flip(lastFlip, guess, goodGuess);

    }

    private void incrementHeadCounter(HttpServletRequest request) {
        Counter count = (Counter) request.getSession().getAttribute("headCounter");
        if (count == null) {
            count = new Counter();
            request.getSession().setAttribute("headCounter", count);
        }
        count.incrementCount();
    }

    private void incrementTailCounter(HttpServletRequest request) {
        Counter count = (Counter) request.getSession().getAttribute("tailCounter");
        if (count == null) {
            count = new Counter();
            request.getSession().setAttribute("tailCounter", count);
        }
        count.incrementCount();
    }
}
