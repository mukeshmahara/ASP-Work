<%@Language = vbscript%>
<%option explicit%>


<%
    dim mybrow

    set mybrow = Server.createobject("MSWC.browsertype")
    

%>

<html>
    <body >
        <table border=1px style="padding:3px ;text-align:center;" >
            <tr>
                <th>Client browser</th>
                <th>Avaibility</th>
            </tr>
            <tr>
                <td>OS</td>
                <td><%Response.Write mybrow.platform%></td>
            </tr>
            <tr>
                <td>web browser</td>
                <td><%Response.Write mybrow.browser%></td>
            </tr>
            <tr>
                <td>browser version</td>
                <td><%Response.Write mybrow.version%></td>
            </tr>
            <tr>
                <td>Frame Support?</td>
                <td><%Response.Write mybrow.Frames%></td>
            </tr>
            <tr>
                <td>Table Support</td>
                <td><%Response.Write mybrow.table%></td>
            </tr>
            <tr>
                <td>Sound Support</td>
                <td><%Response.Write mybrow.backgroundsounds%></td>
            </tr>
            <tr>
                <td>Cookies Support</td>
                <td><%Response.Write mybrow.Cookies%></td>
            </tr>
            <tr>
                <td>vbscript Support</td>
                <td><%Response.Write mybrow.vbscript%></td>
            </tr>
            <tr>
                <td>javascript Support</td>
                <td><%Response.Write mybrow.javascript%></td>
            </tr>
        </table>
    </body>
</html>