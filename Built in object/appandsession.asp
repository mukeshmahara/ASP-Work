<%@language = VBscript%>
<% option explicit%>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>ASP Introduction</h1>

    <h2>ASP Application and session</h2>


    <%
    application("CollegeName") = "MBM, Anamnagar"  'setting the application variable
    session("info") = "Its session object"
    
    Response.Write  application.contents("CollegeName") 'getting the application variable
    Response.Write  application.contents.remove("CollegeName")'removeing the application content
    Response.Write  application.contents("CollegeName") & "<br>"'This content is removed now
    


    'woking on the session
    


    Response.Write session.contents("info")&"<br>"
    Response.Write  Session.sessionID() &"<br>"
    
    %>
    <hr>
    <h4></h4>
    <%
        session("hits") = session("hits")+1
        Response.Write "<h4>" & "Your page request /Reloads : " & session("hits") &"</h4>"
    %>

    <p> </p>
    <%
        application.lock
            application("hits") =application ("hits") +1
        application.unlock

        Response.Write "<h4>" & "Total page Requests/Reload from all users :" &application("hits") & "</h4>"
    %>
    
        <form action="appandsession.asp" method="POST">
            <input type="Submit" value="Destroy_Session" name ="Destroy Sesssion" >
        </form>

    
    <%
        if request.form("Destroy Session") = "Destroy Session" then
            session.abandon
            Response.Write "Your session has been destroy."
            Response.end
        end if
    %>
<hr>
    <%  'Counting number of online peoples using global.asa



        application("Number of onlineusers :")

        Response.Write "Online Users: "& application("onlineusers")
        
    %>
    <hr>

    </body>
</html>