class Vehicle {
    int maxSpeed;

    public Vehicle(int maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    void display() {
        System.out.println("Max Speed: " + maxSpeed + " km/h");
    }
}

// Subclass
class Car extends Vehicle {
    String carName;

    public Car(String carName, int maxSpeed) {
        super(maxSpeed);
        this.carName = carName;
    }

    void display() {
        super.display();
        System.out.println("Car Name: " + carName);
    }
}

public class FinalKeyword {
    public static void main(String[] args) {
        Car myCar = new Car("Ford", 180);
        myCar.display();
    }
}
