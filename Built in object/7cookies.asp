

<%@ Language=VBScript %>
<% option explicit %>


    <%
        'Cookies stores the user identity, password and username,
        'To use cookies we have to use it before the html tag (not inside html tag)
        'Cookies are not methods they are property of response
        Response.Cookies ("username") = "Sajan is gwach"
        Response.Cookies ("username").Expires = date() + 20


        'Counting the number of visit by a single user

        dim numberOfVisits
        Response.Cookies("NumberOfVisits").Expires = Date() + 1
        numberOfVisits = Request.cookies("NumberOfVisits")

        if numberOfVisits = "" then
            Response.Cookies("NumberOfVisits") = 1
            Response.write "Welcome! This is the first time visiting our site, 🙂 Thankyou"
        elseif numberOfVisits = 1 then
            Response.Cookies("NumberOfVisits") = numberOfVisits + 1
            Response.write "Welcome Back! You have visited this page " & numberOfVisits & " time before"
        else 
            Response.Cookies("NumberOfVisits") = numberOfVisits + 1
            Response.write "Welcome Back! You have visited this page " & numberOfVisits & " times before"
        End if



    %>

<html>
	<head>
		<title>ASP introduction</title>
	</head>
	<body>
	<h1>Welcome To ASP Programming</h1>

    <% 
        Response.write "Hi, From Asp" & "</br>"

        Response.write "With double doublequote :" & "Hello ""World"" " & "</br>"
        Response.write "With & quot ; : " & "Hello &quot;World!&quot; " & "</br>"
        Response.write "With chr() with 34: " & "Hello " & chr(34) & "World" & chr(34)
    %>
    <br />

   <% 
        'Response.Redirect "https://www.google.com"
    %>

	</body>
</html>