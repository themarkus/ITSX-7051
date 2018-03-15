package edu.acc.itsx7051.Project02;

public class Movie {
    String name;
    String verdict;
    
    public Movie (String name, String verdict) {
        this.name = name;
        this.verdict = verdict;
    }
    
        public String getName() {
        return this.name;
    }
    
    public String getVerdict() {
        return this.verdict;
    }
}
