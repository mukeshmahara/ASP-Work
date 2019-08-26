<%@ Language = VBScript %>
<% option explicit %>
<html>
    <head>
        <title>Error Handelling in ASP</title>
    </head>
    <body>
        <h1>Welcome to ASP programming</h1>
        <h2>RAISING ERROR</h2>

        
        <%
            dim firstName
            firstName = "Sushil is gwatch"
            If len(firstName) < 3  or  len(firstName) > 20 Then
            Err.Raise 3001, "Validation", "Invalid First Name."
            else
                Response.Write "No Error Found"
            End if
        %>
        <hr>
        
        <%
            dim fso
            set fso = server.createobject("scripting.fileSystemObject")
            fso.opentextfile()
        %>

    </body>
<html>