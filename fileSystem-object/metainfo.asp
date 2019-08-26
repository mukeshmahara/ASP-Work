<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html >
    <head>
    </head>


    <body style="text-align:center; background-color: rgb(20, 50,100)">
    <h1>Welcome to my first ASP page</h1>
    <h2>working on meta information of the file</h2>

    


    <hr>
    <%
        dim f,fileSystem
        set fileSystem = Server.createobject("Scripting.FileSystemObject")

        set f = fileSystem.GetFile("D:\MBM College\6th Semester\NetCentricComputing CSc. 360\Pracitcals\ASP works by bisnu Sir\1index.asp")
        Response.Write (" Created : " &  f.DateCreated & "<br>")
        Response.Write ("File last modified : " & f.DateLastModified & "<br>")
        Response.Write ("File Type : " & f.type & "<br>")
        Response.Write ("File Size (byte) : " & f.Size & "<br>")
        set f = nothing

    %>
    <hr>

    <%
        dim fo,x,sf
        set fo = fileSystem.GetFolder("D:\MBM College\6th Semester")
        Response.Write ("folder Name : " & fo.ShortName & "<br>")
        Response.Write ("folder created : " & fo.DateCreated & "<br>")
        Response.Write ("folder Last Modified : " & fo.DateLastModified & "<br>")
        Response.Write ("Folder Size (byte  ): " & fo.Size & "<br>")


        
    %>
 
    <hr>
    <style>
        table,tr{
            border:solid 2px black;
            padding:5px;
            
            width: 100%;
        }
    </style>
    
    <h4>Detail of the file in the current directory</h4>
    
    <%
        'print all tfile names ith in a folder
        Response.Write "<table >"
            Response.Write "<tr style=""border:3px solid green;"">"
                Response.Write  "<th> Name </th>"
                Response.Write  "<th> Type </th>"
                Response.Write  "<th> Size </th>"
                Response.Write  "<th> DateCreated </th>"
                Response.Write  "<th> DateModified </th>"
            Response.Write  "</tr>"
            Response.Write "<hr>"
                
            for each x in fo.Files
               Response.Write "<tr>"
                    Response.Write "<td>"& x.Name & "</td>"
                    Response.Write "<td>"& x.Type & "</td>"
                    Response.Write "<td>"& x.Size & "</td>"
                    Response.Write "<td>"& x.DateCreated & "</td>"
                    Response.Write "<td>"&x.DateLastModified & "</td>"
                Response.Write "</tr>"
            next

           
            'Printing all the folders avilable in the directory
            for each x in fo.SubFolders
                Response.Write x.Name & "<br>"
            next

           set sf=nothing 
            set fo = nothing

        %>
    <hr>
    </body>
</html>