package edu.acc.itsx7051.Project06;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/item")
public class ItemServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/newItem.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemText = request.getParameter("itemText");
        
        if (itemText == null || itemText.length() == 0) {
            request.setAttribute("error", "You didn't enter an item");
            request.getRequestDispatcher("/WEB-INF/Views/newItem.jsp").forward(request, response);
        } else {
            ItemManager itemManager = (ItemManager) getServletContext().getAttribute("itemManager");
            itemManager.addItem(new Item(itemText));
            response.sendRedirect("/Project06/home");

        }

    }
}
