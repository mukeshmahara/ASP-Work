<% @Language = VBScript%>
<% option explicit %>

<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>
    <h3>Request object-form</h3>
  

    <form action="requestobj-form.asp" method="POST">
        First Name :<input type="text" name="firstname">
        Last Name :<input type="text" name="lastname">
        <p> Select your fav. color :
            <select  name="favcolor">
                <option>red</option>
                <option>Green</option>
                <option>yellow</option>
                <option>pink</option>
            </select>  
        </p>
        <p>
            Gender :
            <input type="radio" <%if gender = "Male" then Response.Write "Checked" end if %> name="gender" value= "male">Male
            <input type="radio" name="gender" value= "female">female
            <input type="radio" name="gender" value= "Other">Others
        </p>
        <input type="submit" value="Add User" >
    </form>

    <%
    if firstname <> " " and lastname <> " " and color <> " " then
        dim firstname ,lastname ,color, gender
        firstname = Request.form("firstname")
        lastname = Request.form("lastname")
        color = Request.form("favcolor")
        gender = Request.form("gender")
        
            If gender = "Male"  then
            Response.Write "Hi! Mr. " & firstname & " " & lastname &  "<br>"    
            
            Else if gender = "female" then
                Response.Write "Hi! Mrs. " & firstname & " " & lastname &  "<br>"
            
            Else
                Response.Write "Hi!  " & firstname & " " & lastname &  "<br>"

            End if
        End if


        
        Response.Write "your fav. color is  :" & color & "<br>"
        Response.Write "your gender is :" & gender & "<br>"
       
    end if
    
    %>


    

    </body>
</html>