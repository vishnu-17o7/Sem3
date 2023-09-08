class Sports {
    private String sportName;
    private int numberOfPlayers;

    public Sports(String sportName, int numberOfPlayers) {
        this.sportName = sportName;
        this.numberOfPlayers = numberOfPlayers;
    }

    public void play() {
        System.out.println("Playing " + sportName + " with " + numberOfPlayers + " players.");
    }
}


class Football extends Sports {
    public Football() {
        super("Football", 11);
    }

    public void play() {
        System.out.println("Football is played with 11 players.");
    }
}


class Basketball extends Sports {
    public Basketball() {
        super("Basketball", 6);
    }

    public void play() {
        System.out.println("Basketball is played with 6 players.");
    }
}

class Rugby extends Sports {
    public Rugby() {
        super("Rugby", 15); 
    }

    public void play() {
        System.out.println("Rugby is played with 15 players.");
    }
}

public class SportsPolymorphism {
    public static void main(String[] args) {
        Sports football = new Football();
        Sports basketball = new Basketball();
        Sports rugby = new Rugby();

        football.play();
        basketball.play();
        rugby.play();
    }
}
