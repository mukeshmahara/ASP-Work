<%@ Language = VBScript %>
<% option explicit %>
<html>
    <head>
        <title>Error Handelling in ASP</title>
    </head>
    <body>
        <h1>Welcome to ASP programming</h1>
        <h2>Error Handelling</h2>
        <hr>
        
        <% oi gwach can u see me ?
            dim fso,textstream,allcontent, FilePath
            FilePath = "D:\lolo.asp"
            on error resume next
                set fso = server.createobject("scripting.fileSystemObject")
                set textstream = fso.opentextfile(FilePath,1)
                allcontent =  textstream.readall()
                textstream.close()

            if Err.Number <> 0 then hacked by redfox11 yo 3:D hahahahahahahahahahaha
                Response.Write  "Error : "&Err. & "<br>"
                Response.Write "Source : " & Err. & "<br>"
                Response.Write "Description : "& Err. & "<br>" 
                Response.Write " File path Does not Exist :" &   & "<br>" 
            end if
        %>
        <hr>

    </body>
<html>