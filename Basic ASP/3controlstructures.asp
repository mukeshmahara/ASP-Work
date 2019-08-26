<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>
    <h2>Control Structure </h2>
    <%
    Response.Write "It is if else condition"&"<br>"
        dim i : i = hour(time)
        If i<12 Then
            Response.Write "Its morning"&"<br>"&"<br>"

        Else
            Response.Write "Its After noon"&"<br>"&"<br>"
        End if 
    
    'Select CASE
    Response.Write "It is Select case same as switch statement" &"<br>"
    dim hairColor

    hairColor = "Black"
    Select Case hairColor
    Case "Black":
        Response.Write ("Im black")&"<br>" 
    Case "Blue":
        Response.Write ("Im blue") &"<br>"
    Case "yellow":
        Response.Write ("Its banana") &"<br>"

    Case else
        Response.Write ("Ah well, whatever")
    End Select       
    %>


    

    </body>
</html>