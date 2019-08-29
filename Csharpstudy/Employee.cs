using System;
public class Employee{

    string empName,empAddress;
    int salary,empid;
     

    public Employee(int id,string name,string Address,int salary)
    {
        int empid =id;
        int empSalary = salary;
        string empName = name;
        string empAddress = Address;

        // Console.Write("This is paramaterized Constructor");  
        Console.WriteLine("Employee ID :"+empid);
        Console.WriteLine("Employee Salary :"+empSalary); 
        Console.WriteLine("Employee Address :"+empAddress);
    }

    
    //Here Employee Name,Employee Addresss and salary are the three properties
    public string EmployeeName{
        get{return empName;}
        set{empName = value;}
    }
    public int EmployeeSalary{
        get{return salary;}
        set{salary = value;}
    }
    public string EmployeeAddress{
        get{return empAddress;}
        set{empAddress = value;}
    }


    public void EmpAddress(){
        Console.WriteLine("This is Employee instatnce Method for EmpAddress ");
        Console.WriteLine("Employee Address :"+EmployeeAddress);

    }
    public void EmpSalary(){
        Console.WriteLine("This is Employee instatnce Method for EmpSalary ");
        Console.WriteLine("Salary:"+EmployeeSalary);
    }

    public static void details(){

        Console.WriteLine("This the Static method");

    }
}