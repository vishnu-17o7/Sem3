package Students;

public class Main {
    public static void main(String[] args) {
        Student student = AdmissionDetails.readAdmissionDetails();
        AdmissionDetails.displayAdmissionDetails(student);
    }
}