package edu.acc.itsx7051.Project04;


public class Flips {
    String LastFlip;
    int Heads;
    int Tails;
    double WinningPercentage;
    
        public Flips (String LastFlip, int Heads, int Tails) {
            this.Heads = Heads;
            this.Tails = Tails;
            this.LastFlip = LastFlip;
            WinningPercentage = Heads / (Heads + Tails);
        }
        
        public String getLastFlip() {
            return this.LastFlip;
        }
        
        public double getWinningPercentage() {
            return this.WinningPercentage;
        }
}
