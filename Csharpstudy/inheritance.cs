using System;
public class Animal{
    public string Type { get; set; } //pets, wild, social
    

    public void Eat(string favFood = "Bread"){
        Console.WriteLine($"I love {favFood}.");
    }
}

public class Dog : Animal{
    public string Breed { get; set; }

    public void Bark(){
        Console.WriteLine("Barking");
    }
}

public class BabyDog : Dog {
    public void Weep() => Console.WriteLine("Weeping");
}




public  abstract class Shape{
    public const double PI = Math.PI;

    protected double x, y ;
    public Shape(double x, double y)
    {
        this.x = x;
        this.y = y; 
        
    }

    public abstract double CalculateArea();

    public abstract double CalculatePerimeter();
}

public class Rectangle : Shape
{
    public Rectangle(double length,double width) : base(length,width){

    }
    public override double CalculateArea() => x * y;

    public override double CalculatePerimeter() => 2*(x+y);
}

public class Circle : Shape
{
    public Circle(double radius) : base(x: radius,0){

    }
    public override double CalculateArea() => 2* PI * x *x;

    public override double CalculatePerimeter() => 2*PI*x;
}

public class Square : Rectangle
{
    public Square(double length, double width) : base(length, width){

    }
    public override double CalculateArea() =>  x *x;

    public override double CalculatePerimeter() => 2*(x+y);
}

