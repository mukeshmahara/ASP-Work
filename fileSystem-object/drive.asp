<% @Language = VBScript%>
<% option explicit %>


<!DOCTYPE html>
<html >
    <head>
    </head>


    <body style="text-align:center; background-color: rgb(20, 50,100)">
    <h1>Welcome to my first ASP page</h1>
    <h2>Retriving the drive information</h2>
    <hr>
    
    <%    
        dim fileSystem, f,driveLetter,drive
        set fileSystem = server.CreateObject("Scripting.fileSystemObject")
        'set drive = fileSystem.GetDrive("d")
    %>   
    <center>
    <style>
    th,tr,table{padding-right:15px;border:1px solid;color:white; text-align:center; }
    </style>
    <table >
        <tr >
            <th> Drive Name</th>
            <th> Drive DriveType</th>
            <th> Drive fileSystem</th>
            <th> Drive TotalSize</th>  
            <th> Drive AvailableSpace</th>                      
        </tr>
        <%  For each driveletter in fileSystem.drives
                set drive = fileSystem.GetDrive(driveLetter)
                
                if drive.IsReady then
                Response.Write  "<tr>"
                    Response.Write  "<td>"  & drive.driveLetter & "</td>"
                    'if drive.DriveType = 0  then
                     '   Response.Write  "<td>" & "Unknown" & "</td>" 
                      '  end if
                    'if drive.DriveType = 1  then
                     '   Response.Write  "<td>" & "Remove" & "</td>" 
                      '  end if
                    'if drive.DriveType = 2  then
                     '   Response.Write  "<td>" & "Fixed" & "</td>" 
                      '  end if
                    'if drive.DriveType = 3  then
                     '   Response.Write  "<td>" & "Network" & "</td>" 
                      '  end if
                    'if drive.DriveType = 4  then
                     '   Response.Write  "<td>" & "CD: ROM" & "</td>" 
                      '  end if
                    'if drive.DriveType = 5  then
                     '   Response.Write  "<td>" & "RAM DISK" & "</td>" 
                      '  end if
                    Response.Write "<td>" & GetDriveType(drive.DriveType) &"</td>"
                    Response.Write "<td>"   &drive.fileSystem & "</td>"
                    Response.Write "<td>"   &formatnumber( drive.TotalSize/(1024*1024*1024)) &" GB" & "</td>"
                    Response.Write "<td>"  &formatnumber(drive.AvailableSpace/(1024*1024*1024)) &" GB" & "</td>" 
                Response.Write    "</tr>"
                end if
                
            next

            function GetDriveType(driveLetter)
                select case driveLetter
                    case 0 :GetDriveType ="Unknown"
                    case 1 :GetDriveType ="Removable"
                    case 2 :GetDriveType ="Fixed"
                    case 3 :GetDriveType ="Network"
                    case 4 :GetDriveType ="CD: ROM"
                    case 5 :GetDriveType ="RAM DISK"
                end select
            end function
        %>
        </table>
        </center>
        <hr>
    </body>
</html>