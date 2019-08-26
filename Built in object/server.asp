<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my ASP page</h1>
    <h3>ASP server object</h3>

    <%
        server.ScriptTimeout = 10  'set
        Response.Write Server.ScriptTimeout  'get 

    
    %>
    <hr>
    <%
        Response.Write " I am on server.asp"

        server.Execute "requestobj-form.asp"
        
        'server.Transfer "requestobj-form.asp"

        Response.Write "Im back on the server."

    %>
    <hr>
    <%
       Response.Write  server.MapPath("server.asp") &"<br>"
       
       Response.Write  server.MapPath("ser.asp") &"<br>"
       
       Response.Write  server.MapPath("server.asp") &"<br>"
       
       Response.Write  server.MapPath("/") &"<br>"
       Response.Write server.MapPath("\o.asp")
    %>
    
    <hr>
    <%
        dim content
        content ="The image tag :<img> you & me, ""OK""?"
    
        
        Response.Write Server.HTMLEncode(content)

    %>
    

    </body>
</html>