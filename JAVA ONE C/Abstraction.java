import java.util.Scanner;
abstract class Shape {
    abstract void calculateArea(Scanner s);
    abstract void calculatePerimeter(Scanner s);

}
class Circle extends Shape {
    public void calculateArea(Scanner s)
    {
        System.out.printf("Enter the radius of the circle :");
        double radius = s.nextDouble();
        System.out.println("IN Circle Area :"+3.14*radius*radius);
    }
     public void calculatePerimeter(Scanner s)
    {
        System.out.printf("Enter the radius of the circle :");
        double radius = s.nextDouble();
        System.out.println("IN Circle Perimeter :"+2*3.14*radius);
    }
}
class Triangle extends Shape{
    public void calculateArea(Scanner s)
    {
        System.out.printf("Enter the breadth and height of the triangle :");
        double breadth = s.nextDouble();
        double height = s.nextDouble();
        System.out.println("IN triangle Area :"+breadth*height*(0.5));
    }
     public void calculatePerimeter(Scanner s)
    {
        System.out.printf("Enter the sides of the triangle :");
        double a = s.nextDouble();
        double b = s.nextDouble();
        double c = s.nextDouble();
        System.out.println("IN triangle Perimeter :"+(a+b+c));
    }
}
class Abstraction{
    public static void main(String[] a)
    {
        Scanner s = new Scanner(System.in);
        Triangle t=new Triangle();
        t.calculateArea(s);
        t.calculatePerimeter(s);
        Circle c= new Circle();
        c.calculateArea(s);
        c.calculatePerimeter(s);
        s.close();
    }
}