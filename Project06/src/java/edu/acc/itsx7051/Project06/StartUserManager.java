package edu.acc.itsx7051.Project06;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartUserManager implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        UserManager manager = new UserManager();
        manager.addUser(new User("RoyBaty","IWantMoreLife"));
        
        sce.getServletContext().setAttribute("userManager", manager);

        System.out.println("---- STARTING UP, new userManager created!!!");
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
