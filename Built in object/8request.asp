<%@ Language=VBScript %>
<% option explicit %>

    <% 
        Response.Cookies("user")("firstname") = "Hari"
        Response.Cookies("user")("lastname") = "Prasad"
                    Response.Cookies("user")("age") = 23
        Response.Cookies("user")("isFemale") = false
        Response.Cookies("cal") = "ram sham hari"
    %>

<html>
	<head>
		<title>ASP introduction</title>
	</head>
	<body>
	<h1>Welcome To ASP Programming</h1>
    <h2>Request Object</h2>
    <%

        dim cookie
        Request.cookies("user")
        Request.cookies("user")("firstname")


        if Request.cookies("user").HasKeys then
            for each cookie in Request.cookies("user")
                response.write cookie & ": " &  Request.cookies("user")(cookie) & "</br>"
            next
        end if

    %>
    <hr />

    <a href="/request.asp?name=ram||name=mukesh">Click me </a>

    <%
        dim name 
        name = Request.QueryString("name")
        if name    <> "" then
            response.write "<br/> Hey! " & name

        end if

        
    %>
    <hr/>
    <a href="/request.asp?a=5&b=6">Add 5 and 6</a>

    <%
        dim a : a = request.QueryString("a")
        dim b : b = request.QueryString("b")
        dim sum : sum = cint(a) + cint(b)
        response.write "<br />" & a & " + " & b & " = " & sum & "<br />"

        'Convert to double : cdbl() <= convert double

        dim variable
        for each variable in Request.ServerVariables
            response.write "<b>"&variable & "</b>" & ":"  & Request.ServerVariables(variable) & "</br>"
        next


    %>

	</body>
</html>