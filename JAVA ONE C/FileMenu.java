import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class FileMenu {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("File Handling Menu:");
            System.out.println("1. Create and Write to Text File");
            System.out.println("2. Read from Text File");
            System.out.println("3. Get Text File Information");
            System.out.println("4. Delete Text File");
            System.out.println("5. Exit");
            System.out.print("Enter your choice (1-5): ");

            int choice = scanner.nextInt();
            scanner.nextLine();  // Consume the newline character

            switch (choice) {
                case 1:
                    createAndWriteToTextFile();
                    break;
                case 2:
                    readFromTextFile();
                    break;
                case 3:
                    getTextFileInfo();
                    break;
                case 4:
                    deleteTextFile();
                    break;
                case 5:
                    System.out.println("Exiting the program. Goodbye!");
                    System.exit(0);
                    break;
                default:
                    System.out.println("Invalid choice. Please enter a number between 1 and 5.");
            }
        }
    }

    private static void createAndWriteToTextFile() {
        try {
            System.out.print("Enter the text file name: ");
            String fileName = new Scanner(System.in).nextLine() + ".txt";

            File myObj = new File(fileName);

            if (myObj.createNewFile()) {
                System.out.println("Text file created: " + myObj.getName());

                FileWriter myWriter = new FileWriter(fileName);
                System.out.print("Enter the content to write to the text file: ");
                String content = new Scanner(System.in).nextLine();
                myWriter.write(content);
                myWriter.close();

                System.out.println("Successfully wrote to the text file.");
            } else {
                System.out.println("Text file already exists.");
            }
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    private static void readFromTextFile() {
        try {
            System.out.print("Enter the text file name: ");
            String fileName = new Scanner(System.in).nextLine() + ".txt";

            File myObj = new File(fileName);

            Scanner myReader = new Scanner(myObj);

            while (myReader.hasNextLine()) {
                String data = myReader.nextLine();
                System.out.println(data);
            }

            myReader.close();
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    private static void getTextFileInfo() {
        System.out.print("Enter the text file name: ");
        String fileName = new Scanner(System.in).nextLine() + ".txt";

        File myObj = new File(fileName);

        if (myObj.exists()) {
            System.out.println("Text file name: " + myObj.getName());
            System.out.println("Absolute path: " + myObj.getAbsolutePath());
            System.out.println("Writeable: " + myObj.canWrite());
            System.out.println("Readable: " + myObj.canRead());
            System.out.println("File size in bytes: " + myObj.length());
        } else {
            System.out.println("The text file does not exist.");
        }
    }

    private static void deleteTextFile() {
        System.out.print("Enter the text file name: ");
        String fileName = new Scanner(System.in).nextLine() + ".txt";

        File myObj = new File(fileName);

        if (myObj.delete()) {
            System.out.println("Deleted the text file: " + myObj.getName());
        } else {
            System.out.println("Failed to delete the text file.");
        }
    }
}
