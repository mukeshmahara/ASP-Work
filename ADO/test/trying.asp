<%@Language = VBScript CODEPAGE="1252"%>
<%option Explicit%>
<html>
    <head>
        <title>Practice</title>
        <link rel="vbs" href="hello.vbs">
    </head>
    <body>


        <a href="test.asp?name=Mukesh&surname=Mahara">login</a>

        hi,
        <%'=request.querystring("name")%> <%'=request.querystring("surname")%>
        <%
           'MsgBox("HELLO BRO"[,vbok][,"MSGBOX"][,helpfile,context])
           dim answer

            Response.Write answer
        %>

    </body>
</html>
