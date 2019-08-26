<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page This is runnning on local Server at port: 9868</h1>
    <h2>Learing about VBScript procedures</h2>
    <h3>There are two types of VBScript Procedures</h3>
    <li>Sub procedures</li>
    <li>Functional Procedures</li>
    <%

        'Sub procedures
        'Series of statements, enclosed by Sub and End Sub Statements
        'can perform actions, but does not return a value
        sub WriteHello(Stringpara)
            Response.Write Stringpara 
        end sub
    'now calling the sub procedure
        WriteHello "mukeshmahara"  'passing the String  argument to the sub procedure


        'Functoinal Procedure:
        'is a series of statements, enclosed by the paranthesis
        'Fucntinos and End Functions
        'can perform actions and can return a value
        'returns a value bu assigning a value to  its name

    Response.Write "<br>"
        function add(a,b)
            add = a+ b
        end function

        dim sum : sum =add(10,30)
        Response.Write "sum =" & sum &"<br>"


    Response.Write "<br>"
        Response.Write "Using Fucntion"
         Response.Write "<br>"
        function area(radius)
            area =3.1415 *radius*radius
        end function
        dim value : value = area(5)
        Response.Write  "Area of circle with radius 5 is :" & value 

    Response.Write "<br>"
    
    Response.Write "<br>"
        Response.Write "Using sub Procedure" & "<br>"
        Sub areaofcircle(rad)
            ' Do Something...
            dim value1 
            value1= 3.1415*rad*rad
            Response.Write "Area of circle using sub procedure with radius 5 is :" & value1
        End Sub 

        areaofcircle(5)

        'Printing the patterns
        Sub patterns(para)
            ' Do Something...
           
           dim i,j
            For i=0 To 10 Step 1
                ' body
                For j=1 To i Step 1
                    ' body
                    Response.Write  para
                Next
                
                Response.Write "<br>"

            Next
        End Sub

        patterns "1"  'calling the sub procedure  function

        
        
        
         
    
    
    %>
    
    <label for="box1"> InputBox1:   <input id="box1" placeholder="Enter your data here"></label> 
    <label for="box2"> InputBox2:   <input id="box2" placeholder="Enter your data here"></label> 
    


    

    </body>
</html>