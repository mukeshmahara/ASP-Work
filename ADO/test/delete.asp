<%

dim conn, recordset,quary,value,x
        set conn  = server.createobject("ADODB.Connection")
        conn.Open ("Provider=SQLOLEDB;Data Source=.\;Initial Catalog=MBMDB;User Id='mukesh';Password='mukesh'") 
        
        quary = "DELETE FROM Studentinfo where sid="&request.querystring("ID")
        conn.execute quary
        If quary=true Then
        
                Response.Write "Record deleted Successfully"
  
        Else
                Response.Write "Unable to delete the record!"
        End if
        response.redirect "list.asp"

%>