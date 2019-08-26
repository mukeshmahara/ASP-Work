<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body style="text-align:center;">
    <h1>Welcome to my first ASP page</h1>
    <h2>-----Create and write text files------</h2>
    <hr>
    <%
        'file systemobject object are used to access the file system on the server
        'e can manupkate files, folder, drivers adn directory path
        dim fileSystem, currDirPath, file ,folderPath, folder,i

        currDirPath = server.mappath(".")

        For i=0 To 25 Step 1
            ' body
                folderPath = currDirPath &"/"& chr(65+i)
                set fileSystem = server.createObject("Scripting.FileSystemObject")

            if fileSystem.FolderExists(folderPath) = false then
                set folder = fileSystem.CreateFolder(folderPath)
            end if
            
            set file = fileSystem.createTextFile(folderPath & "/"& chr(65+i) )
       
            file.WriteLine("Sucessfull")
        
        
        Next

        file.close
        set file = nothing
        set folder =nothing
        set fileSystem= nothing


        Response.Write "Text file created successfully"
    
    %>
    <hr>

    

    </body>
</html>