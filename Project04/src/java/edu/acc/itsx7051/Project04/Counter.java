package edu.acc.itsx7051.Project04;

public class Counter {
    int count;
    
    public Counter() {
        this.count = 0;
    }

    public int getCount() {
        return this.count;
    }

    public int incrementCount() {
        this.count = this.count + 1;
        return this.count;
    }
}
