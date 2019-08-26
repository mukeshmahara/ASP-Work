<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    <style>
    h1,h2,h3{
        text-align:center;
    }

    p{
        border:groove 10px red;
        text-align: center;
        border-radius : 15px;
    }
    </style>
    </head>

    
    <body>
    <h1>Welcome to my first ASP page</h1>
    <h2>VBScript random exampleds using built-in APIs</h2>
    <h3>Datetime</h3>
    
    

    
    <p>
        Hey from <%Response.Write("I'm from ASP engine!!") &"<br>"%>
        today is : <%Response.Write date() & "<br>"%>
        And its <% Response.Write time() &"<br>"%>

    </p>
    <p>
    <%
    Response.Write "Date and time stuffs Here!! using date and time APIS"&"<br>"
    Response.Write (FormatDateTime(date(),vbgeneraldate)) &"<br>"
    Response.Write (FormatDateTime(date(),vblongdate)) &"<br>"
    Response.Write (FormatDateTime(date(),vbshortdate)) &"<br>"
    Response.Write (FormatDateTime(now(),vblongtime)) &"<br>"
    Response.Write (FormatDateTime(now(),vbshorttime)) &"<br>"
    %>
    </p>

    <p>
        Date after 45 days from today :<%Response.Write DateAdd("d",45,date())&"<br>"%>
        Date after 45 month from today :<%Response.Write DateAdd("m",45,date())&"<br>"%>
        Date after 45 year from today :<%Response.Write DateAdd("yyyy",45,date())&"<br>"%>

        <%Response.Write (FormatDateTime(date()+45  ,vbgeneraldate)) &"<br>"%>
    </p>

    <p> 
        <%
            dim year2500 
            year2500 = cdate("1/1/2500 00:00:00") 

            Response.Write "It is " & datediff("yyyy" ,now(), year2500) & " year to 2500years to come" & "<br>"
            Response.Write "It is " & datediff("m" ,now(), year2500) & " months to 2500years to come"& "<br>"
            Response.Write "It is " & datediff("ww" ,now(), year2500) & " week to 2500years to come"& "<br>"
            Response.Write "It is " & datediff("d" ,now(), year2500) & " days to 2500years to come"& "<br>"
            Response.Write "It is " & datediff("s" ,now(), year2500) & " Second to 2500years to come"& "<br>"
            Response.Write "It is " & datediff("n" ,now(), year2500) & " minutes to 2500years to come"& "<br>"
            Response.Write "It is " & datediff("h" ,now(), year2500) & " hours to 2500years to come"& "<br>"
            Response.Write "It is " & datediff("ww" ,now(), year2500) & " year to 2500years to come"& "<br>"
        
        %>
    </p>

    <div>
    <h3>Dealing with strings</h3>

    <p>
    <%
        dim sometext
        sometext = "     Madan Bhandari Memoriall college"
        sometext = trim(sometext)
        Response.Write sometext & "<br/>"

        Response.Write strReverse(sometext) &"<br>"
        Response.Write  mid(sometext,16,8) &"<br>" 'Extracting the substring of the String
    
        randomize()
        Response.Write "Generating the random number from 0 to 100 :"&" "&cint(100*rnd())

    %>
    </p>
    </div>
    
    

    

    </body>
</html>