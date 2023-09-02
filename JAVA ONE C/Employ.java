import java.util.Scanner;

public class Employ {
    private int ID;
    private String NAME;
    private double SALARY;

    public Employ(int ID, String NAME, double SALARY) {
        this.ID = ID;
        this.NAME = NAME;
        this.SALARY = SALARY;
    }

    public void modifySalary() {
        this.SALARY = this.SALARY+10000;
    }
    public int getID() {
        return ID;
    }
    public String getNAME() {
        return NAME;
    }
    public double getSALARY() {
        return SALARY;
    }
    public static void main(String []args){
        Scanner sc = new Scanner(System.in);
        //Get Details
        System.out.println("Enter the number of employees");
        int n = sc.nextInt();
        Employ[] emp = new Employ[n];
        for(int i=0;i<n;i++){
            System.out.println("Enter the details of employee "+(i+1));
            System.out.println("Enter ID");
            int id = sc.nextInt();
            System.out.println("Enter Name");
            String name = sc.next();
            System.out.println("Enter Salary");
            double sal = sc.nextDouble();
            emp[i] = new Employ(id,name,sal);
        }

        //Print Details
        System.out.println("Employee Details");
        for(int i=0;i<n;i++){
            emp[i].modifySalary();
            System.out.println("Employee ID: "+emp[i].getID());
            System.out.println("Employee Name: "+emp[i].getNAME());
            System.out.println("Employee Salary: "+emp[i].getSALARY());
        }
        sc.close();
    }
}