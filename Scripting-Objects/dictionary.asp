<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body style="text-align:center;">
    <h1>Welcome to my first ASP page</h1>
    <h3>Working on Dictionary</h3>

    <%

        'dim countryCapitals, country
        'set countryCapitals = server.CreateObject("Scripting.Dictionary")
        'countryCapitals.add "Nepal", "kathmandu"
        'countryCapitals.add "india", "Dehli"

        'Response.Write countryCapitals("Nepal")
        'Response.Write countryCapitals.keys()
        'for each country in countryCapitals
        '    Response.Write countryCapitals(country) & " is the capital city of  " & country & ". <br>"
        'next

    %>

<hr>


<hr>
    <%
        dim loginCredentails, username, password, success
        
        set loginCredentails = server.CreateObject("Scripting.Dictionary")
    
        loginCredentails.add "username" ,"admin"
        loginCredentails.add "password", "admin1234"
        
        username = request.form("username")
        password = request.form("password")

        if username = loginCredentails.item("username") and password  = loginCredentails.item("password") Then
            'true
           Response.Write "login Successful" &"<hr>" &"<hr>"
           
           response.End
           
          
           'Response.redirect "https://www.google.com"
        

        'Else if username  <> " " and password  <> " " Then
            ' false
            'Response.Write "You must entere the username and password!!"
        Elseif username <> "" and username <> loginCredentails.item("username") and password  <> loginCredentails.item("password") then
            Response.Write "Invalid Login"
        End if
    
    %>

    <form action="dictionary.asp" name="loginCredentials" method="POST" > 
        <input type="text" placeholder="username" name="username" style="text-align:center;"><br>

        <input type="password" placeholder="password" name="password" style="text-align:center;"><br>

        <input type="submit" value="login">
    </form>
    
    <hr>
    <hr>

    

    </body>
</html>