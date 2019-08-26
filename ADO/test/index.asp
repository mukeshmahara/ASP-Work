<% @ Language=VBScript %>
<% option explicit %>

<html>

<head>
    <Title>StudentInfo</Title>
</head>
<style>
      blink {
        animation: blinker 0.6s linear infinite;
        color: green;
       }
      @keyframes blinker {  
        30% { opacity: 0; }
       }
       .blink-one {
         animation: blinker-one 1.5s linear infinite;
       }
       @keyframes blinker-one {  
         0% { opacity: 0; }
       }
       .blink-two {
         animation: blinker-two 1.8s linear infinite;
       }
       @keyframes blinker-two {  
         100% { opacity: 0; }
       }
        table,body{
            width:80%;
        }
        h5,h1{text-align:center;}
       a,button,table{
           
           text-decoration:none;
       }

       div{
            position:absolute;
            margin-left:55%;
       }
    </style>
<body>


<h1>Registration Form</h1>


    <%
        dim conn, recordset,quary,value,x
        set conn  = server.createobject("ADODB.Connection")
        conn.Open ("Provider=SQLOLEDB;Data Source=.\;Initial Catalog=MBMDB;User Id='mukesh';Password='mukesh'") 
    %>

    <%
        dim fname,mname,lname,dob,phone,faculty,totalfee,sql
        fname = request.form("fname")
        mname = request.form("mname")
        lname = request.form("lname")
        dob = request.form("dob")
        phone = request.form("phone")
        faculty = request.form("faculty")
        totalfee = request.form("totalfee")

        if fname <> "" then
            sql = "INSERT INTO Studentinfo(fname,mname,lname,dob,phone,faculty,totalfee)VALUES('"&fname &"','"&mname&"','"&lname&"',"&dob&",'"&phone&"','"&faculty&"','"&totalfee&"')"
            conn.execute sql
            Response.Write "<p class='blink-one'>"&"Record inserted Successfully"&"</p>"
        else
            Response.Write "<h5 class='blink-two'>"&"Fill All the required fields"&"</h5>"
        end if

        conn.close
    %>



    <Form action="index.asp" method="POST">
    
        <table border=2>

        
            <tr>
                <td>
                    <label>First Name: </label>
                </td>
                <td><input type="text" name="fname" size=60% />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Middle Name: </label>
                </td>
                <td>
                    <input type="text" name="mname" size=60%/>
                </td>
            </tr>
            
            <tr>
                <td>
                    <label>Last Name: </label>
                </td>
                <td>
                    <input type="text" name="lname" size=60%/>
                </td>
            </tr>
            
            <tr>
                <td>
                    <label>DOB </label>
                </td>
                <td>
                    <input type="date" name="dob" size="60%" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Phone No : </label>
                </td>
                <td>
                    <input type="number" name="phone" size=60%/>
                </td>
            </tr>
            
            <tr>
            <td>
                <label>totalfee : </label>
            </td>
            <td>
                <input type="number" name="totalfee" size=60%/>
            </td>
            
            </tr>
            <tr>
                <td>
                    <label>Faculty: </label>
                </td>
                <td>
                    <select name="faculty" >
                        <option>BSc. CSIT</option>
                        <option>BSW</option>
                        <option>BBS</option>
                        <option>BBA</option>
                    </select>
                </td>
            </tr>

            
        

        </table>
        <div >
            <input type="submit" value="Save"/>
            <input type="reset" value="reset"/>
        </div>
    </Form>
    <p><button><a href="list.asp">List of Students</a></button></p>
</body>

</html>