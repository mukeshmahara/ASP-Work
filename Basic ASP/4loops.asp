<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>
    <h2>loops Structure</h2>
    <%
        dim i ,j, k,l
        For i=0 To 10  Step 2
            ' body
            Response.Write "Value of i: " & i &"<br>"
        Next
    
    
        Response.Write "<br>"
        Response.Write "Using two loops" & "<br>"
        For j=1 To 6 Step 1
            ' body
            For k=1 To j Step 1
                ' body
                Response.Write k 
            Next
            Response.Write "<br>"
        Next


        Response.Write "<br>"
        Response.Write "Using single loops" &  "<br>" 
        For l=1 To 6  Step 1
            ' body
            dim val
    
            val=val*10+l
            Response.Write val & "<br>"
            
        Next
        Response.Write "<br>"


        Response.Write "variation of for loop FOR EACH " &"<br>"

        dim fruits,item
        fruits = Array("Apple", "Orange", "Mango")
        for each item in fruits
        Response.Write item & "<br>"
        next


        Response.Write "<br>"


        Response.Write "Do loops " &"<br>"
        dim var
        Do While var < 5
            ' body
            var=var+1
            Response.Write var & "<br>"
        Loop
        
        dim var1
        do
        var1 =var1+2
        Response.Write "value of var1:" & var1 &"<br>"
        loop while var1<10
        
        'use  do loops - if you dont know how many repitation is 
        

        Response.Write "<br>"
        Response.Write "variation of Do while loop" &"<br>"
        Response.Write "Do Until loops" & "<br>"
        dim var2
        Do Until var2=50
        ' body
            var2=var2+1
            if var2 = 20 then exit do
            Response.Write "Value of var2: " & var2 &"<br>" 
        Loop

        'repeat code while a condition is true

        

    
    %>


    

    </body>
</html>