abstract class Shape {

    abstract double calculateArea();
    abstract double calculatePerimeter();

}
class Triangle extends Shape {
    public double calculateArea()
    {
        System.out.println("IN triangle Area");
        return 0.0;
    }

}
class Circle extends Shape{
    public double calculateArea()
    {
        System.out.println("IN Shape Area");
        return 0.0;

    }
}
class Abstraction extends Circle{
    public static void main(String[] a)
    {
        double s,b;
        Triangle t=new Triangle();
        s=t.calculateArea();
        Circle c= new Circle();
        b=c.calculateArea();
    }
}