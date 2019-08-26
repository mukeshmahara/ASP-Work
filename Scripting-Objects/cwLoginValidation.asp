<% @ language="VBScript" %>
<% option explicit %>
aa boi

<html>
	<head>
		<title>ASP introduction</title>
	</head>
	<body>
	    <h1>Welcome To ASP Programming</h1>
        <h2>ASP Dictionary Object</h2>


        <%
            dim userName
            dim Valid 

            set Valid = server.createObject("Scripting.Dictionary")

            Valid.add "Sushil", "1234"
        
        
        
        %>


        


        
        <%

            ' if(request.form("login") = "Login") then
            '         for each userName in Valid 
            '             if(userName = request.form("userName") and Valid(userName) = Request.form("password")) then
            '                 Response.write "You are Logged in"
            '                 Response.end
            '             end if
            '         next 
                
            ' end if

            if(request.form("login") =  "Login" ) then
                
                if(Valid.Exists(request.form("userName"))) then
                    Response.write "You are Logged in"
                    Response.end

                end if
            end if

        %>

        
        <form action="cwLoginValidation.asp" method="POST">
            <label for="uname">Username: </label>
            <input id="uname" name="userName" type="text" />
            </br>
            <label for="pass">Password: </label>
            <input id="pass" name="password" type="password" />
            </br>
            <input type="submit" name="login" value="Login" />
        </form>
    
    </body>
</html>