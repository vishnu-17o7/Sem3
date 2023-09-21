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

final class Vehicle1 {
    final String carName = "FINAL CAR";

    final void message() {
        System.out.println("This is a final method.");
    }
}

public class FinalKeyword {
    public static void main(String[] args) {
        Car myCar = new Car("Ford", 180);
        myCar.display();

        Vehicle1 vehicle1 = new Vehicle1();
        System.out.println("Car Name: " + vehicle1.carName);
        vehicle1.message();
    }
}
