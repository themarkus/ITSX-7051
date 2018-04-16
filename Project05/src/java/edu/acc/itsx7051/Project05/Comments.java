package edu.acc.itsx7051.Project05;


public class Comments {
    String comment;
    String name;
    String email;
    String timeStamp;
    
    public Comments (String comment, String name, String email, String timeStamp) {
    //public Comments (String comment) {
        this.comment = comment;
        this.name = name;
        this.email = email;
        this.timeStamp = timeStamp; 
    }
    
    public String getComment() {
        return comment;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getTimeStamp() {
        return timeStamp;
    }
    
}
