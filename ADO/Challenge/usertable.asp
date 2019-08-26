<% @Language = VBScript%>
<% option Explicit %>


<!DOCTYPE html>
<html>
    <head>
    <Style>
        body{text-align:center;}
        div{text-align:center;
            border:ridge 3px purple;
            width:100%;
        }
        table,tr,th,td{
            
            text-align:center;
            border:solid 1px red;
            
        }
    </Style>
    </head>


    <body >

    <%


        dim conn, connectionString, sql, recordset,rowsAffected,x,fields

        'conn.Mode = adModeReadWrite
        set conn = server.CreateObject("ADODB.Connection")
        set recordset = server.CreateObject("ADODB.RecordSet")
        
        conn.connectionString = "Provider = SQLOLEDB; Data Source = .\; Initial Catalog  = MukeshDb; User Id='mukesh';Password='mukesh'"
        conn.open 
        Response.Write "<hr>"&"Connected to Database Successfully"&"<hr>"&"<br>"
                
          
        
        
        sql = "select * FROM userlogin"
        
        conn.Execute sql
        recordset.open sql,conn
        
        Response.Write "<h4>"&"User Details"&"</h4>"
        Response.Write  "<div>"  
            Response.Write "<table >"
            Response.Write "<tr>"&"<th>SID</th>"&"<th>Username</th>"&"<th>Email</th>"&_
            "<th>Password</th>"&"<th>Delete</th>"&"</tr>"
            do until recordset.EOF
            
                Response.Write "<tr>"
                    'Response.Write "<td>"&"<button>"&"Delete"&"</button>"&"</td>"
                    for each x in recordset.fields                    
                        Response.Write "<td>"
                        Response.Write  x.value  
                        Response.Write "</td>"
                    next
                            
                    recordset.MoveNext
                    response.write "<td>"
                        response.write "<a href=""loginApplication.asp?ID="&recordset("uid")&""">Delete</a>"
                    Response.Write "</td>"
               
                Response.Write "</tr>"
                    
            loop
            Response.Write "</table>"
        Response.Write "</div>"  
        
    
    %>
    <%
        
        recordset.close
        conn.close
        
    %>
    <hr >
    


    

    </body>
</html>