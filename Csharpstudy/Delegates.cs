//Delegate is a representative function

//delegate is reference type. It helps to represent the number of function
//

using System;
public class Delegates
{
    public delegate void Print(int value);
    public void UseDelegates(){
        Print print = PrintAsNumber;
        print(1234);
    }

    public void PrintAsNumber(int num){
        console.WriteLine($"Number :{num:10});

    }
    

    public void PrintAge(int age){

    }
}