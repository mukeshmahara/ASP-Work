<%@Language = VBSCRIPT%>
<%option explicit%>

<%

'Learning about ASP builtin Objects
%>
<html>
    <body>  
        <h1>Learning ASP builtin Response objects</h1>

        <%
        'Response.Status= "unauthorized access 404"
        'Response.Write ("Repost:" &Response.Status)
        dim user
        'Response.Write  Request.ServerVariables("http_accept")        
        server.Execute("branch.asp") 
        Response.Write "</br>"
        Response.Write "After the branch script"

         Response.Write Server.MapPath(".\branch.asp")
        %>
            

        <%Response.Write "Total number of online users :"&(application("onlineusers"))
        %>
        

    </body>
</html>