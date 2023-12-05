package Students;
import java.util.Scanner;

public class AdmissionDetails {
    public static Student readAdmissionDetails() {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter student name:");
        String name = scanner.nextLine();

        System.out.println("Enter student age:");
        int age = scanner.nextInt();
        scanner.nextLine();
        System.out.println("Enter student course:");
        String course = scanner.nextLine();

        return new Student(name, age, course);
    }

    public static void displayAdmissionDetails(Student student) {
        System.out.println("\nAdmission Details:");
        System.out.println(student);
    }
}

