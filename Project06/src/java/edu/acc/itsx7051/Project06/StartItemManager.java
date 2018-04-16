package edu.acc.itsx7051.Project06;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartItemManager implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        ItemManager manager = new ItemManager();
        sce.getServletContext().setAttribute("itemManager", manager);
        System.out.println("---- STARTING UP, new itemManager created!!!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
