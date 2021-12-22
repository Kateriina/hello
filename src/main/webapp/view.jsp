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
            <script src="filter.js" type="text/javascript"></script>
            <link rel="stylesheet" href = "style.css">
            <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">

            <style>
                th{
                    /*background-color: #6ec5fa;*/
                    font-size: 150%;
                    font-family: 'Montserrat', sans-serif;
                    padding: 3px 8px;
                    text-align: center;
                    border-radius: 10px;
                    background-color: #a5baff;
                    border: 1px solid gray;
                }
                a{
                    color: black;
                    display: inline-block;
                    vertical-align: top;
                    margin: 0 10px;
                    position: relative;
                    transition: color .1s linear;
                    font-family: 'Montserrat', sans-serif;
                }
                a:hover{
                    color: #f0feed;
                }
                h2{
                    font-size:300%;
                    font-family: 'Montserrat', sans-serif;
                    font-weight: bold;
                    margin-bottom: 0%;
                }
                .buttn{
                    display: inline-block;
                    padding: 3px 8px;
                    margin-left: 2%;
                    vertical-align: top;
                    color: black;
                    font-size: 16px;
                    text-decoration: none;
                    background-color: #c7d3fa;
                    border-radius: 10px;
                    border: 1px solid gray;
                    font-size: 100%;
                    text-align: center;
                }

                .buttn:hover{
                    background-color: #a5baff;
                    color: black;
                }

            </style>

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
            <h2 align="center">Данные пациентов</h2>
            <a class = "buttn" href="addingData.jsp">Добавить</a>
        <table align="center" cellpadding="2" cellspacing="0" border="0" style="font-family:Montserrat" >
        <tr>

        </tr>
        <tr>
        <th><b>id</b></th>
        <th><b>Фамилия</b></th>
        <th><b>Имя</b></th>
        <th><b>Отчество</b></th>
        <th><b>Пол</b></th>
        <th><b>Дата рождения</b></th>
        <th><b>Номер полиса</b></th>
        <th><b>Номер паспорта</b></th>
        <th><b>Страна</b></th>
        <th><b>Город</b></th>
        <th><b>Улица</b></th>
        <th><b>Дом</b></th>
        <th><b>Корпус</b></th>
        <th><b>Квартира</b></th>
        <th><b>Кабинеты</b></th>
        <th><b>Изменение</b></th>
        <th><b>Удаление</b></th>
        <th><b>Печать</b></th>
        </tr>
            <%
                try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();
                String sql ="SELECT * FROM patients";

                resultSet = statement.executeQuery(sql);
                int n = 0;
                while(resultSet.next()){
            %>
        <tr>

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

        <td><a href="edit.jsp">Изменить</a></td>
        <td><a href="delete.jsp">Удалить</a></td>
        </tr>

            <%
                n++;
                }

                } catch (Exception e) {
                e.printStackTrace();
                }

            %>
        </table>
            </body>
            </html>
