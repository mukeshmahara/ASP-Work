<% @Language = VBScript%>
<%option Explicit %>

 <html>
    <head>
        <title>Login</title>
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
    </style>


    <%


        'Getting user information from the form
            dim USERNAME , EMAIL , PASSWORD , UID,fields
            
            USERNAME = Request.form("uname")
            EMAIL = Request.form("email")
            PASSWORD = Request.form("pass")
            'UID = Request.form("uid")
            
            
        'Getting connection with Database
            dim conn, connectionString, sql, recordset,rowsAffected,dsql
            set conn = server.CreateObject("ADODB.Connection")
            set recordset = server.CreateObject("ADODB.RecordSet")
            conn.connectionString = "Provider = SQLOLEDB; Data Source = .\; Initial Catalog  = MukeshDb; User Id='mukesh';Password='mukesh'"
            conn.open 
                        
            If USERNAME<> null and EMAIL<> null and PASSWORD<>null  Then
              sql = "Insert into userlogin (username, email, password) values ('"&USERNAME&"','"&EMAIL&"','"&PASSWORD&"')"
              conn.Execute sql 
              'Response.Write "Successfully inserted Record"
           
            'Else
                'Response.Write "<blink class='blink-two'>"&"All Field are required to insert the user data"&"Unable to insert record""</blink>"
            'End if

            'dsql = "delete from userlogin where uid = '"&UID&"'"
            dsql = "delete from userlogin where uid = "&request.querystring("ID")
            conn.Execute dsql
         
            
            
           
            
        %>

    <body style="text-align:center;">
        <div id="frm">
        <h2> Add User Records
            <form method="POST" action="loginApplication.asp" >
                <fieldset>
                    <input type="text" name="uname" placeholder="USERNAME"  required style="text-align:center; margin:10px;" /> <br>
                    <input type="email" name="email" placeholder="Email"  required style="text-align:center; margin:10px;" /><br>
                    <input type="password" name="pass" placeholder="PASSWORD"  required style="text-align:center; margin:10px;" /><br>
                    
                    <input type="submit" name="submit"  value="Add user" target="blank" style="text-align:center; margin:10px;"  /> 
                    <input type="reset" value="reset">
                </fieldset>
                <%
                    Response.Write "<h5 class='blink-one' >"&"Logged in Successfully"&"</h5>"&"<br>"
                    Response.Write  "<h3>"&"You are logged in as:" & USERNAME &"</h3>"
                %>
            </form>    
       </div> 
       
       
       
       
       <div id="container">
       <h2>Delete user Records</h2>
        <form    action="loginApplication.asp" method="POST">

        <input type="number" name="uid" placeholder="Enter UID">
        
        <input type="submit" value="delete">
        <input type="reset" value="reset">
       
       </form>
       </div>
       
       <%server.transfer("usertable.asp")%>

        
        
    </body>
 </html>