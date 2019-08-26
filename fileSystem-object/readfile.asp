<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html>
    <head>
    </head>


    <body>
    <h1>Welcome to my first ASP page</h1>
    <h2>ASP - Read Text file</h2>

    <%
        dim fileSystem,file
        set fileSystem = Server.createobject("Scripting.FileSystemObject")

        '.openTeext file(Fname, mode,create,format)
        'mode Optional. how to open the file
        '1 = forReading - open file for reading .  You cannot write to this file.
        '2 = for Writing -open file for writign 
        '8 = for Appendign- open a file and write to the end of the file

        set file = fileSystem.openTextFile("D:\MBM College\6th Semester\NetCentricComputing CSc. 360\Pracitcals\ASP works by bisnu Sir\1index.asp")
        Response.Write  file.ReadAll()
        set file = nothing
    
    %>
    <hr>

    <%
        dim f
        set f = fileSystem.GetFile("D:\MBM College\6th Semester\NetCentricComputing CSc. 360\Pracitcals\ASP works by bisnu Sir\1index.asp")
        Response.Write ("File Created : " &f.DateCreated & "<br>")
        Response.Write ("File last modified : " &f.DateLastModified & "<br>")
        Response.Write ("File Type : " &f.type & "<br>")
        Response.Write ("File Size : " &f.Size & "<br>")
    %>


    

    </body>
</html>