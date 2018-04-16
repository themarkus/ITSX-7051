package edu.acc.itsx7051.Project05;

import java.util.ArrayList;

public class CommentsManager {
    ArrayList<Comments> items = new ArrayList<> ();
    
    public Comments[] getAllComments() {

        return (Comments[]) this.items.toArray(new Comments[]{});
    }
    
    public void addComments(Comments newComments) {
        // insert into food values (?) 
        items.add(newComments);
    }
}
