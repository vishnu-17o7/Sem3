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

    public double calculateFuelEfficiency() {
        return 25.0;
    }

    public int getMaxSpeed() {
        return 120;
    }

    public String PrintDetails() {
        return "Make: " + make + ", Model: " + model + ", Year: " + year + ", Fuel Type: " + fuelType;
    }
}

class Truck extends Vehicle {
    private double cargoCapacity;

    public Truck(String make, String model, int year, String fuelType, double cargoCapacity) {
        super(make, model, year, fuelType);
        this.cargoCapacity = cargoCapacity;
    }
    public double getCargoCapcity() {
        return cargoCapacity;
    }

}

class Car extends Vehicle {
    private int numberOfSeats;

    public Car(String make, String model, int year, String fuelType, int numberOfSeats) {
        super(make, model, year, fuelType);
        this.numberOfSeats = numberOfSeats;
    }
     public int getseats() {
        return numberOfSeats;
    }
}

class Motorcycle extends Vehicle {
    public Motorcycle(String make, String model, int year, String fuelType) {
        super(make, model, year, fuelType);
    }
}

public class Vehicles {
    public static void main(String[] args) {
        Truck myTruck = new Truck("Ford", "F-150", 2022, "Gasoline", 2000.0);
        Car myCar = new Car("Toyota", "Camry", 2023, "Hybrid", 5);
        Motorcycle myMotorcycle = new Motorcycle("Harley-Davidson", "Sportster", 2021, "Gasoline");

        System.out.println(" Truck: " + myTruck.PrintDetails()+"  Max Speed :"+myTruck.getMaxSpeed()+"  Fuel Efficiency :"+myTruck.calculateFuelEfficiency()+" Cargo Capacity :"+myTruck.getCargoCapcity());
        System.out.println(" Car: " + myCar.PrintDetails()+"  Max Speed :"+myTruck.getMaxSpeed()+"  Fuel Efficiency :"+myCar.calculateFuelEfficiency()+" No of seats :"+myCar.getseats());
        System.out.println(" Motorcycle: " + myMotorcycle.PrintDetails()+"  Max Speed :"+myTruck.getMaxSpeed()+"  Fuel Efficiency :"+myTruck.calculateFuelEfficiency());
       // System.out.println("Car Fuel Efficiency: " + myCar.calculateFuelEfficiency() + " kpl");        
    }
}
