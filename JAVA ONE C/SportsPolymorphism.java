// Base class Sports
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

// Subclass Football
class Football extends Sports {
    public Football() {
        super("Football", 11); // Football is typically played with 11 players.
    }

    @Override
    public void play() {
        System.out.println("Kicking the ball in a game of Football with 11 players.");
    }
}

// Subclass Basketball
class Basketball extends Sports {
    public Basketball() {
        super("Basketball", 5); // Basketball is typically played with 5 players.
    }

    @Override
    public void play() {
        System.out.println("Dribbling and shooting in a game of Basketball with 5 players.");
    }
}

// Subclass Rugby
class Rugby extends Sports {
    public Rugby() {
        super("Rugby", 15); // Rugby is typically played with 15 players.
    }

    @Override
    public void play() {
        System.out.println("Scrumming and tackling in a game of Rugby with 15 players.");
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
