<%@Language = VBSCRIPT%>
<%option explicit%>

<%

'Learning about ASP builtin Objects
%>
<html>
    <body>  
        <h3>Sending and Receiving Email with ASP</h3>
        <hr>
        <%
        dim myMail
            set myMail = Server.createObject("CDO.Message")
            myMail.Subject = "Call for the leaders"
            myMail.From = "mukeshmahara1@gmail.com"
            myMail.To = "om.thedevine@gmail.com"
            myMail.TextBody = "Hello !! Om Prakash you have been selected for the leader in Infotrix ...For more detail visit out website https://www.infotrix.wordpresss.com"
            'myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")=2
            'Name or IP of remote SMTP Server
            'myMail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")= "smtp.server.com"
            'Server Port
            'myMail.configuration.Fields.Item("http;schemas.microsodt.com/cdo/configuration/smtpserverport")=25
            'myMail.Configuration.Fields.Update
            myMail.Send()
            set myMail=nothing
        %>

       

    </body>
</html>