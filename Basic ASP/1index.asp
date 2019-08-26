<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>

    <%
        dim x
        x=1234
        Response.Write("Hi from ASP engine")
        Response.Write x 
    
    
    %>


    

    </body>
</html>