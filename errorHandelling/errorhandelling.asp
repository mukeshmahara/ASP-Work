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
        
        <% Response.Write  "oi gwach can u see me ?" &"<br>"
            dim fso,textstream,allcontent, FilePath
            FilePath = "D:\lolo.asp"
            on error resume next
                set fso = server.createobject("scripting.fileSystemObject")
                set textstream = fso.opentextfile(FilePath,1)
                allcontent =  textstream.readall()
                textstream.close()

            if Err.Number <> 0 then 
                Response.Write  "Error : "&Err.Number & "<br>"
                Response.Write "Source : " & Err.Source & "<br>"
                Response.Write "Description : "& Err.Description & "<br>" 
                Response.Write " File path Does not Exist :" & allcontent   & "<br>" 
            end if
        %>
        <hr>

    </body>
<html>