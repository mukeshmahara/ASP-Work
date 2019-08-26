<%@language = VBScript%>
<%option Explicit%>
<html>
    <head>
    <title>Login</title>
    <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
    <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
    
    </head>

    <style>
        input{
            margin:5px;
            text-align:center;
            border-radius:5px;
            padding:5px;
            font-size:18px;
        }
        body,form{
            text-align:center;
            margin-top:10%;
            background-color:black;
            border-radius:10px;
        }
        .loginbtn{
            background-color:#84C5F9;
        }
        .resetbtn{
            background-color :#845834;
        }
        .loginbox{
            background-color:white;
            position:fixed;
            margin-left:40%;
            margin-right:40%;
            padding:5px;
            border-radius:15px;
            border:ridge;


        }
    
        p {
            border:solid;
            margin-right:15%;
            margin-left:45%;
            margin-top:15%;
            color:red;
            z-index:1;
            position:absolute;
            -webkit-animation: seconds 1.0s forwards;
            -webkit-animation-iteration-count: 1;
            -webkit-animation-delay: 5s;
            animation: seconds 1.0s forwards;
            animation-iteration-count: 1;
            animation-delay: 5s;
            position: absolute;
            background: white;
            }
            @-webkit-keyframes seconds {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
                left: -9999px; 
            }
            }
            @keyframes seconds {
            0% {
                opacity: 1;
            }

            100% {
                opacity: 0;
                left: -9999px; 
            }
        }

    </style>
    <body>
        <div class="loginbox">
            <form action="login.asp" method="POST">
                <input type="text" name="username" placeholder="username"><br>
                <input type="password" name="password" placeholder="password"><br>
                <input type="submit" class="loginbtn" name="submit" value="login">
                <input type="reset"class="resetbtn" name="reset" value="reset">
                
                
                
            </form>
        </div>
        <%
        dim uname,pass
            uname = Request.form("username")
            pass = Request.form("password")
            
        %>

        <%
            dim conn, recordset,query,value,x
            set conn  = server.createobject("ADODB.Connection")
            set recordset = server.createobject("ADODB.RecordSet")
            conn.Open ("Provider=SQLOLEDB;Data Source=.\;Initial Catalog=MBMDB;User Id='mukesh';Password='mukesh'")
                
            query = "SELECT * FROM login"
            recordset.open query,conn

            'Do Until recordset.EOF
             '   for each x in recordset.fields
                    If recordset("aname") = uname and recordset("apassword") = pass Then
                    response.redirect("index.asp")
                    Else
                    Response.Write "<p>"&"User Doesn't Exist"&"</p>"

                    End if

              '  next   
            'Loop

            

        %>

    </body>
</html>