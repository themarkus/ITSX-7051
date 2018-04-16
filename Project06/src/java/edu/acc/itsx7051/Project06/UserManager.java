package edu.acc.itsx7051.Project06;

import java.util.ArrayList;

public class UserManager {

    ArrayList<User> users = new ArrayList<>();

    private static boolean loginMatches(User user, String name, String password) {
        return user.getUsername().equals(name) && user.getPassword().equals(password);
    }

    public User scanLogins(String name, String password) {

        for (User user : users) {
            if (loginMatches(user, name, password)) {
                return user;
            }
        }
        return null;
    }

    public void addUser(User newUser) {
        // insert into food values (?) 
        users.add(newUser);
    }
}
