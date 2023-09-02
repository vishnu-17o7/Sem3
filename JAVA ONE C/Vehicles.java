class Vehicle {
    private String make;
    private String model;
    private int year;
    private String fuelType;

    public Vehicle(String make, String model, int year, String fuelType) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.fuelType = fuelType;
    }

    public String getMake() {
        return make;
    }

    public String getModel() {
        return model;
    }

    public int getYear() {
        return year;
    }

    public String getFuelType() {
        return fuelType;
    }

    public double calculateFuelEfficiency() {
        // Implement fuel efficiency calculation logic here
        return 0.0;
    }

    public double calculateDistanceTraveled(double fuelConsumed) {
        // Implement distance traveled calculation logic here
        return 0.0;
    }

    public int getMaxSpeed() {
        // Implement maximum speed retrieval logic here
        return 0;
    }

    @Override
    public String toString() {
        return "Make: " + make + ", Model: " + model + ", Year: " + year + ", Fuel Type: " + fuelType;
    }
}

class Truck extends Vehicle {
    private double cargoCapacity;

    public Truck(String make, String model, int year, String fuelType, double cargoCapacity) {
        super(make, model, year, fuelType);
        this.cargoCapacity = cargoCapacity;
    }

    // Implement methods specific to trucks here
}

class Car extends Vehicle {
    private int numberOfSeats;

    public Car(String make, String model, int year, String fuelType, int numberOfSeats) {
        super(make, model, year, fuelType);
        this.numberOfSeats = numberOfSeats;
    }

    // Implement methods specific to cars here
}

class Motorcycle extends Vehicle {
    public Motorcycle(String make, String model, int year, String fuelType) {
        super(make, model, year, fuelType);
    }

    // Implement methods specific to motorcycles here
}

public class Vehicles {
    public static void main(String[] args) {
        Truck myTruck = new Truck("Ford", "F-150", 2022, "Gasoline", 2000.0);
        Car myCar = new Car("Toyota", "Camry", 2023, "Hybrid", 5);
        Motorcycle myMotorcycle = new Motorcycle("Harley-Davidson", "Sportster", 2021, "Gasoline");

        System.out.println(" Truck: " + myTruck);
        System.out.println(" Car: " + myCar);
        System.out.println(" Motorcycle: " + myMotorcycle);

        // You can call methods like calculateFuelEfficiency, calculateDistanceTraveled, and getMaxSpeed
        // on the instances of these classes as needed.
    }
}
