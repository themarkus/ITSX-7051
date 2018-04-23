package edu.acc.itsx7051.Project06;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartUserManager implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        UserManager manager = new UserManager();
        manager.addUser(new User("RoyBaty","d2cef4b483e6ca325ccb35059764c4ed208adf033c2e324cd37207012d77b7bc"));
        
        sce.getServletContext().setAttribute("userManager", manager);
        System.out.println("---- STARTING UP, new userManager created!!!");
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
