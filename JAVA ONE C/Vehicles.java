class Vehicle {
    private String make;
    private String model;
    private int year;
    private String fuelType;

    Vehicle(String make, String model, int year, String fuelType) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.fuelType = fuelType;
    }

    double calculateFuelEfficiency() {
        return 25.0;
    }

    int getMaxSpeed() {
        return 120;
    }

    String printDetails() {
        return "Make: " + make + ", Model: " + model + ", Year: " + year + ", Fuel Type: " + fuelType;
    }
}

class Truck extends Vehicle {
    private double cargoCapacity;

    Truck(String make, String model, int year, String fuelType, double cargoCapacity) {
        super(make, model, year, fuelType);
        this.cargoCapacity = cargoCapacity;
    }

    double getCargoCapacity() {
        return cargoCapacity;
    }
}

class Car extends Vehicle {
    private int numberOfSeats;

    Car(String make, String model, int year, String fuelType, int numberOfSeats) {
        super(make, model, year, fuelType);
        this.numberOfSeats = numberOfSeats;
    }

    int getNumberOfSeats() {
        return numberOfSeats;
    }
}

class Motorcycle extends Vehicle {
    Motorcycle(String make, String model, int year, String fuelType) {
        super(make, model, year, fuelType);
    }
}

class Vehicles {
    public static void main(String[] args) {
        Truck myTruck = new Truck("Ford", "F-150", 2022, "Gasoline", 2000.00);
        Car myCar = new Car("Toyota", "Camry", 2023, "Hybrid", 5);
        Motorcycle myMotorcycle = new Motorcycle("Harley-Davidson", "Sportster", 2021, "Gasoline");

        System.out.println(" Truck: " + myTruck.printDetails() + "  Max Speed :" + myTruck.getMaxSpeed() + "  Fuel Efficiency :" + myTruck.calculateFuelEfficiency() + " Cargo Capacity :" + myTruck.getCargoCapacity());
        System.out.println(" Car: " + myCar.printDetails() + "  Max Speed :" + myCar.getMaxSpeed() + "  Fuel Efficiency :" + myCar.calculateFuelEfficiency() + " No of seats :" + myCar.getNumberOfSeats());
        System.out.println(" Motorcycle: " + myMotorcycle.printDetails() + "  Max Speed :" + myMotorcycle.getMaxSpeed() + "  Fuel Efficiency :" + myMotorcycle.calculateFuelEfficiency());
    }
}
