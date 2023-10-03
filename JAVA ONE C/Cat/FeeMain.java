import java.util.Scanner;
import java.util.StringTokenizer;

class Student{
    final private int StudentID;
    private String Name;
    private int Grade;
    protected float FeeDue;
    protected float FeePaid;

    Student(int StudentID, String Name, int Grade,  float FeeDue, float FeePaid){
        this.StudentID = StudentID;
        this.Name = Name;
        this.Grade = Grade;
        this.FeeDue = FeeDue;
        this.FeePaid = FeePaid;
    }
    void PrintDetails(){
        System.out.printf("\n Student ID: %d \n Name : %s \n Grade : %s",StudentID,Name,Grade);
    }
    void PrintFeeDetails(){
        System.out.printf("Complete a Transaction to view the Details");
    }
    /*float GetFeePaid(){
       return this.FeePaid;
    }
    float GetFeeDue(){
       return this.FeeDue;
    }*/

}
class Fee extends Student{
    String Transaction = "";
    Fee(int StudentID, String Name, int Grade, float FeeDue, float FeePaid) {
        super(StudentID, Name, Grade, FeeDue, FeePaid);
    }

    void PrintFeeDetails(){
        System.out.printf("Fee Due : %f \n Fee Paid : %f",FeeDue, FeePaid);
    }

    void payFee(Student Student, Scanner sc){
        System.out.println("Enter the amount you want to pay :");
        int amount = sc.nextInt();
        this.FeePaid = amount;
        this.FeeDue -= amount ;
        Transaction += "Paid : " + amount + "\n";

    }

    void PrintTransaction(){
        StringTokenizer st = new StringTokenizer(Transaction,"\n");
        //System.out.println(Transaction);
        while(st.hasMoreTokens()){
            System.out.print(st.nextToken());
        }
    }
}
class Feemain{
    public static void main(String []args){
        int i;
        String ch = "Yes";
        Scanner sc = new Scanner(System.in);
        Student[] student = new Student[5];
        Fee[] fee = new Fee[10];

        for(i=0;i<5;i++){
            sc.nextLine();
            System.out.print("Initialze the details of the students\n\n\n");
            System.out.println("Enter Name :");
            String Name = sc.nextLine();
            System.out.println("Enter Grade :");
            int grade = sc.nextInt();
            student[i] = new Student(i, Name, grade, grade*1000,0 );
            fee[i] = new Fee(i, Name, grade, grade*1000,0);
            //fee[i].payFee(student[i]);
            //fee[i].PrintFeeDetails();
        }
        System.out.print("Student Fee Portal\n\n\n");
        while(ch == "Yes"){
            
            System.out.println("\n\n\n1.Print Student Details\n2.Print Fee Details\n3.Pay Fee\n4.See Transaction Details\n5.Exit\nEnter your Choice :");
            int j = sc.nextInt();
            if(j==1){
                System.out.printf("\n\nEnter the student ID :");
            int ID = sc.nextInt();
                student[ID].PrintDetails();
            }else if(j == 2){
                System.out.printf("\n\nEnter the student ID :");
            int ID = sc.nextInt();
                fee[ID].PrintFeeDetails();
            }else if(j == 3){
                System.out.printf("\n\nEnter the student ID :");
            int ID = sc.nextInt();
                fee[ID].payFee(student[ID], sc);
            }else if(j == 4){
                System.out.printf("\n\nEnter the student ID :");
            int ID = sc.nextInt();
                fee[ID].PrintTransaction();
            }else if(j == 5){
                sc.close();
                return;
            }
        }
        sc.close();
    }
}