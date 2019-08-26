<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    <Style>
        body{text-align:center;}
        div{text-align:center;}
        th,td{
            padding:
            text-align:center;
            border:solid 1px red;
        }
    </Style>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>
    <h2>ADO - Connecting to Database</h2>

    <%
        dim conn, connectionString, sql, recordset, field,x
        'conn.Mode = adModeReadWrite
        set conn = server.CreateObject("ADODB.Connection")
        conn.connectionString = "Provider = SQLOLEDB; Data Source = .\; Initial Catalog  = MukeshDb; User Id='mukesh';Password='mukesh'"
        conn.open 
        Response.Write "<hr>"&"Connected Successfully"&"<hr>"&"<br>"

        set recordset = server.CreateObject("ADODB.RecordSet")
        sql = "SELECT * FROM dbo.Student"

        recordset.open sql, conn

        
        
        Response.Write "<h4>"&"Data Retrived from the DataBase "&"</h4>"
        

      
    
    
    %>
    <hr >
    <div>
        <table>
            <tr>  
                <th>Sid</th>
                <th>Fname</th>
                <th>Lname</th>
                <th>Address</th>
            </tr>
            <tr>
            <%
                do until recordset.EOF
                    for each x in recordset.fields
                        'Response.Write "<td>"& x.name &"</td>"
                        Response.Write "<td>"& x.value & "</td>"
                    next
                    
                    recordset.MoveNext
                    Response.Write "<br>"
                loop
                recordset.close
                conn.close
            %>
            </tr>
        </table>
    </div>



    

    </body>
</html>