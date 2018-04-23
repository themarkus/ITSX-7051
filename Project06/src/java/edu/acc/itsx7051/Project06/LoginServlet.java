package edu.acc.itsx7051.Project06;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String enteredUsername = request.getParameter("username");
        String enteredPassword = request.getParameter("password");
        String hashedPassword = PasswordHash.hashPassword(enteredPassword);
        System.out.println(hashedPassword);
        
        if ((enteredUsername == null || enteredUsername.length() == 0) || (enteredPassword == null || enteredPassword.length() == 0)) {
            request.setAttribute("error", "You didn't enter both a username and password");
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        } else {
            UserManager userManager = (UserManager) getServletContext().getAttribute("userManager");
            User user = (User) (userManager.scanLogins(enteredUsername, hashedPassword));
            
            if (user != null) {
               
               request.getSession().setAttribute("user", user);
               response.sendRedirect("/Project06/home"); 
            } else {
             request.setAttribute("error", "Your username and password didn't match a known login");
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);   
            }
            
        }
    }
}
