<% @ Language=VBScript %>
<% option explicit %>

<html>

<head>
    <Title>Student List</Title>
</head>
    <style>
      blink {
        animation: blinker 0.6s linear infinite;
        color: red;
       }
      @keyframes blinker {  
        50% { opacity: 0; }
       }
       .blink-one {
         animation: blinker-one 1.2s linear infinite;
       }
       @keyframes blinker-one {  
         0% { opacity: 0; }
       }
       .blink-two {
         animation: blinker-two 1.4s linear infinite;
       }
       @keyframes blinker-two {  
         100% { opacity: 0; }
       }
       a,button{
           
           text-decoration:none;
           color:black;
           
       }
        body,table{
           text-align:center;
           width:100%;
       }
    </style>
<body>


<h4>List of All Student</h4>

    <%
        dim conn, recordset,quary,value,x
        set conn  = server.createobject("ADODB.Connection")
        conn.Open ("Provider=SQLOLEDB;Data Source=.\;Initial Catalog=MBMDB;User Id='mukesh';Password='mukesh'") 
        
        set recordset = server.createobject("ADODB.RecordSet")
        quary = "SELECT * FROM Studentinfo"
        recordset.open quary,conn
        response.write "<table border=2>"
         Response.Write "<th>sid</th>"&"<th>First Name</th>"&"<th>Mid Name</th>"&"<th>Last Name</th>"&"<th>Faculty</th>"&"<th>Total fee</th>"&"<th>Phone</th>"&"<th>DOB</th>"&"<th>Delete</th>"
        do until recordset.EOF
        response.write "<tr>"
           
            for each x in recordset.fields
                response.write "<td>"
                response.write x.value
                response.write "</td>"
            next
            response.write "<td>"
            Response.Write "<button>"
                response.write "<a href=""delete.asp?ID="&recordset("sid")&""">Delete</a>"
            Response.Write "</button>"
            response.write "</td>"
            response.write "</tr>"
            recordset.movenext
        loop
        response.write "</table>"
    %>

    <button><a href="index.asp">Add Student</a></button>


</body>

</html>