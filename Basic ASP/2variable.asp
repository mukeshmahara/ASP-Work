<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>

    <%
 
        Response.Write("Hi from ASP engine")
       

        'dim- - dimension, declare in memory
        'only one type of variable -  variant type (dynamic type)
        'which can hold 3 kind of values : Scallar values, arrray and object pointer
       
       
        'scalar type


        dim x,y,z,a,b,c
        x=10
        y=32.222
        z="mukesh mahara"
        a=True
        b= #2018/12/23#
        c = #23:34:23#
        Response.Write x
        Response.Write "<br/>"
        
        Response.Write y
        Response.Write "<br/>"

        Response.Write z
        Response.Write "<br/>"
        
        Response.Write a
        Response.Write "<br/>"

        Response.Write b
        Response.Write "<br/>"   

        Response.Write c
        Response.Write "<br/>"


        'array Type

        dim arr(10)
        arr(0) ="first Item ""<br/>"
        arr(2) = 2367
        Response.Write arr(0)




        
     
        dim arr1
        arr1 = Array(123, 45, 5, 114)


        dim mat(2,3) 
        mat (0,0) ="Apple"
        
        mat (0,1) ="Apple"
        
        mat (0,2) ="Apple"
        
        mat (0,3) ="Apple"
        
        mat (1,0) ="Apple"

        Response.Write LBound(arr) 
        
        Response.Write UBound(arr)

        'Object pointer

        dim objDictionary
        set objDictionary = Server.createObject("Scripting.Dictionary")
    


         %>

    

    </body>
</html>