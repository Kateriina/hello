    <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.Connection"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
                 pageEncoding="UTF-8"%>
        <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
            <html>
            <head>
            <meta charset="UTF-8" />
            <link rel="stylesheet" href = "style.css">
            </head>
            <body>
            <%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "patients";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
        <h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>

        </tr>
        <tr bgcolor="#5c16fa">
        <td><b>id</b></td>
        <td><b>Фамилия</b></td>
        <td><b>Имя</b></td>
        <td><b>Отчество</b></td><td><b>Фамилия</b></td>
         <td><b>Пол</b></td>
        </tr>
            <%
try{
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM patients";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
        <tr bgcolor="#DEB887">

        <td><%=resultSet.getString("id") %></td>
        <td><%=resultSet.getString("surname") %></td>
        <td><%=resultSet.getString("name") %></td>
        <td><%=resultSet.getString("second_name") %></td>
        <td><%=resultSet.getString("gender") %></td>

        </tr>

            <%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
        </table>
            </body>
            </html>
