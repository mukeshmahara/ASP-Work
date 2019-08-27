using System;
public class Methods{
    public float CalculateArea(float radius){
        const float PI = 3.1415F;
        var area = PI*radius*radius; 
        return area;

    }


    public int multiply(params int [] operands){
        int z = 1;
        foreach (var x in operands)
        {
            z = z*x; 
        }
        return z;
    }
     
     public float sum(float s1, float s2 = 10F){
         return s1+s2;

     }
    
    // returning multiple values using tuple
    public (int,int) ReturnSumAndMul(int x, int y){
        var product = x*y;
        var Sum = x+y;
        return (product , Sum); 
    }

    public (string,int,decimal,string) Details(string sellername, int orderNum, decimal price, string orderCode){
        var Name = sellername; 
        var Order_number =orderNum;
        var Price = price;
        var OrderCode = orderCode;

        return (Name, Order_number , Price, OrderCode);
 
    }
    public void PrintOrderDetails(string sellerName, int orderNum, decimal price, string productCode){
        Console.WriteLine($"Seller:{sellerName},  Order Num:{orderNum}, Price:{14553.125},ProductCode: {223}");

    }
}