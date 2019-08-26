<% @Language = VBScript%>
<% option Explicit %>


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
        dim conn, connectionString, sql, recordset,rowsAffected,x,fields
        'conn.Mode = adModeReadWrite
        set conn = server.CreateObject("ADODB.Connection")
        conn.connectionString = "Provider = SQLOLEDB; Data Source = .\; Initial Catalog  = MBMDB; User Id='mukesh';Password='mukesh'"
        conn.open 
        Response.Write "<hr>"&"Connected Successfully"&"<hr>"&"<br>"
        
        set recordset = server.CreateObject("ADODB.RecordSet")
        
        sql = "Insert into Student (firstname, surname, address,Phone,email)" & _
        "Values ('Parash','Gurung','KTM','954445421','hellgod@gmail.com')"
        
        conn.Execute sql, rowsAffected
        recordset.open "Select * FROM student",conn
        
        Response.Write "<h4>"&rowsAffected&"rows inserted"&"</h4>"
        Response.Write "<table border=3>"
        Response.Write "<tr>"&"<th>SID</th>"&"<th>FirstName</th>"&"<th>Surname</th>"&_
        "<th>Address</th>"&"<th>Email</th>"&"<th>DOB</th>"&"<th>Total Fee</th>"&"<th>Phone</th>"&"</tr>"
        do until recordset.EOF
        Response.Write "<tr>"
            for each x in recordset.fields
                'Response.Write "<td>"& x.name &"</td>"
                    Response.Write "<td>"
                    Response.Write  x.value 
                    Response.Write "</td>"
                next
                    
                recordset.MoveNext
                Response.Write "</tr>"
                
            loop
            Response.Write "</table>"
        recordset.close
    conn.close
    
    
    %>
    <hr >
    


    

    </body>
</html>