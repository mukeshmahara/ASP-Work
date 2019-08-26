using System;


    class Program
    {
        static void Main(string[] args){

        // Console.WriteLine("Enter the value of  x :");
        // int x = Convert.ToInt32(Console.ReadLine()); 
        // Console.WriteLine("Enter the value of  y :");
        // int y = Convert.ToInt32(Console.ReadLine()); 
        // int sum = x + y;
        // Console.WriteLine("The sum of two number is :"+sum);


        Methods me = new Methods();
        
        Console.Write("Enter the radius of circle : ") ;
        float rad =float.Parse(Console.ReadLine());
        Console.WriteLine("The Area of the circle is :"+me.CalculateArea(rad));
        

        Console.WriteLine("The product of two number is "+ me.multiply(12));
        
        (int sum, int product) result = me.ReturnSumAndMul(20,30);

        Console.WriteLine("Tuple Sum: "+result.product);
        Console.WriteLine("Tuple Product: "+result.sum);

        me.PrintOrderDetails(orderNum:1231123,sellerName:"Mukesh",productCode:"123",price : 1233);
        }
    }

