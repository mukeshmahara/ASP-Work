<%@Language = VBScript%>
<%option Explicit%>
<html>
    <head>
        <title>Practice</title>
    </head>
    <body>


        

        hi,<%=request.querystring("name")%> <%=request.querystring("surname")%>

    </body>
</html>
