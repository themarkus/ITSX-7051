package edu.acc.itsx7051.Project05;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartCommentsManager implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        CommentsManager manager = new CommentsManager();
        //manager.addComments(new Comments("You will see you comments here!", "Roy Baty", "Roy.Baty@TyrellCorp.com", "1/1/2000 12:00am"));
        //manager.addComments(new Comments("You will see you comments here!"));
        sce.getServletContext().setAttribute("commentsManager", manager);

        System.out.println("---- STARTING UP, new commentsManager created!!!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
