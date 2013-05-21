<%-- 
    Document   : index
    Created on : May 20, 2013, 12:50:13 AM
    Author     : Win7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <br/>
        <h1 style="color: tomato">Thi Trực Tuyến</h1>
        <br/>
        <div style=" width: 50%;background-color: darkcyan;font-size: 30px;padding: 2%; color: white">Thông tin thí sinh</div>
        <table>
            <form action="taobaithi" method="post">
            <tr><td>Họ và tên: </td> <td><input type ="text" required/></td></tr>
            <tr><td>Ngày sinh: </td> <td><input type ="text"/></td></tr>
            <tr><td>CMND: </td> <td><input type ="text"required/></td></tr>
            <tr><td></td> <td><input type ="submit" value="Bắt đầu thi"></td></tr>
            </form>
        </table>
        </center>
    </body>
</html>
