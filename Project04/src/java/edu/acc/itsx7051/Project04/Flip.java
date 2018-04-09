package edu.acc.itsx7051.Project04;

public class Flip {

    String lastFlip;
    String guess;
    boolean goodGuess;

    public Flip(String lastFlip, String guess, boolean goodGuess) {
        this.lastFlip = lastFlip;
        this.guess = guess;
        this.goodGuess = goodGuess;
    }

    public String getLastFlip() {
        return this.lastFlip;
    }

    public String getGuess() {
        return this.guess;
    }

    public boolean getGoodGuess() {
        return this.goodGuess;
    }

}
