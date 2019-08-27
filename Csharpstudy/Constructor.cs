using System;

public class Person
{
    string name;
    byte age;
    char gender;
    DateTime dob;
    

    public Person() //Default Constructor
    {
        
    }
    public Person(string n)
    {
        name = n;
    }
    public Person (string n,byte a){
        name = n;
        age = a;
    }
    // public string PrintPersonDetails(){
            //$ This symobl is called string interpolation
            // string personDetails = string.Format("I'm {0} and i'm {1} years old",name,age);
            // string personDetails = $"Im {name} and im {age} years old";
            // return personDetails;
        // }
        public string PrintPersonDetails()=>//using ambda Expression
            $"Im {name} and im {age} years old";

    
}

public class Counter{
    private Counter(){

    }
    public static int currentCount;
    public static int IncrementCount() => ++currentCount;
}

public class Bus{
    protected static DateTime startTime;
    protected int routeNumber;


    static Bus()=> startTime =DateTime.Now;


    public Bus(int route) => routeNumber = route;

}