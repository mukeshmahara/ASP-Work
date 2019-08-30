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


        // Methods me = new Methods();
        
        // Console.Write("Enter the radius of circle : ") ;
        // float rad =float.Parse(Console.ReadLine());
        // Console.WriteLine("The Area of the circle is :"+me.CalculateArea(rad));
        

        // Console.WriteLine("The product of two number is "+ me.multiply(12));
        
        // (int sum, int product) result = me.ReturnSumAndMul(20,30);

        // Console.WriteLine("Tuple Sum: "+result.product);
        // Console.WriteLine("Tuple Product: "+result.sum);

        // me.PrintOrderDetails(orderNum:1231123,sellerName:"Mukesh",productCode:"123",price : 1233);
        // (string Name,int ProductNum, decimal price ,string productCode) result1 = me.Details("Mukesh Mahara", 1234, 145.545454M,"KAt123");
        //     Console.WriteLine("Using Tuple Variable:");
        //     Console.WriteLine("Seller Name is :"+ result1.Name);

        //Day 2

        // Person person1 = new Person();
        // Person person2 = new Person("Mukesh");
        // Person person3 = new Person("Hari",32);   


        // var details = person3.PrintPersonDetails();
        // Console.WriteLine(details);   

        // Student st1 = new Student();
        // st1.FirstName = "Mukesh Mahara";
         Employee.details();
         Employee emp = new Employee(1,"Mukesh Mahara","Kathmandu",5000);
         Employee emp1 = new Employee();


        emp.EmployeeName = "Sushil";
         Console.Write("Name :"+emp.EmployeeName);
        }


        
    }

