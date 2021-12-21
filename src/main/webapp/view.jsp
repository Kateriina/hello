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
        <h2 align="center"><font><strong>Данные пациентов</strong></font></h2>
        <table align="center" cellpadding="2" cellspacing="0" border="1">
        <tr>

        </tr>
        <tr bgcolor="#6ec5fa">
        <td><b>id</b></td>
        <td><b>Фамилия</b></td>
        <td><b>Имя</b></td>
        <td><b>Отчество</b></td>
        <td><b>Пол</b></td>
        <td><b>Дата рождения</b></td>
        <td><b>Номер полиса</b></td>
        <td><b>Номер паспорта</b></td>
        <td><b>Страна</b></td>
        <td><b>Город</b></td>
        <td><b>Улица</b></td>
        <td><b>Дом</b></td>
        <td><b>Корпус</b></td>
        <td><b>Квартира</b></td>
        <td><b>Кабинеты</b></td>
        </tr>
            <%
                try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();
                String sql ="SELECT * FROM patients";

                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
            %>
        <tr bgcolor="#c7d3fa">

        <td><%=resultSet.getString("id") %></td>
        <td><%=resultSet.getString("surname") %></td>
        <td><%=resultSet.getString("name") %></td>
        <td><%=resultSet.getString("second_name") %></td>
        <td><%=resultSet.getString("gender") %></td>
        <td><%=resultSet.getString("birthdate") %></td>
        <td><%=resultSet.getString("polis_num") %></td>
        <td><%=resultSet.getString("pasport_num") %></td>
        <td><%=resultSet.getString("country") %></td>
        <td><%=resultSet.getString("city") %></td>
        <td><%=resultSet.getString("street") %></td>
        <td><%=resultSet.getString("house_num") %></td>
        <td><%=resultSet.getString("building") %></td>
        <td><%=resultSet.getString("apartment") %></td>
        <td><%=resultSet.getString("routesheet") %></td>

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
