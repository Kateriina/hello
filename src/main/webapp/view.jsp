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
            <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">

            <style>
                table{
                font-size: 60%;
                font-family: 'Montserrat', sans-serif;
                margin-top: 1%;
                border-radius: 10px;
                }

                td {
                font-size: 150%;
                font-family: 'Montserrat', sans-serif;
                padding: 3px 8px;
                text-align: center;
                background-color: #c7d3fa;
                border-radius: 10px;
                border: 1px solid gray;
                }
                h1{
                font-size:200%;
                font-family: 'Montserrat', sans-serif;
                }
                body{
                background: url("./med.jpg");
                background-size: cover;
                background-repeat:no-repeat;
                font-family: 'Montserrat', sans-serif;
                }
                h2{
                font-size: 300%;
                font-family: 'Montserrat', sans-serif;
                }
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
        <th><b>Район</b></th>
        <th><b>Улица</b></th>
        <th><b>Дом</b></th>
        <th><b>Корпус</b></th>
        <th><b>Квартира</b></th>
        <th><b>Телефон</b></th>
        <th><b>Эл. почта</b></th>
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
                while(resultSet.next()){
            %>
        <tr>

        <td><%=resultSet.getString("id") %></td>
        <td><a href="action.jsp?str=surname&val=<%=resultSet.getString("surname") %>"><%=resultSet.getString("surname") %></a></td>
        <td><a href="action.jsp?str=name&val=<%=resultSet.getString("name") %>"><%=resultSet.getString("name") %></a></td>
        <td><a href="action.jsp?str=second_name&val=<%=resultSet.getString("second_name") %>"><%=resultSet.getString("second_name") %></a></td>
        <td><a href="action.jsp?str=gender&val=<%=resultSet.getString("gender") %>"><%=resultSet.getString("gender") %></a></td>
        <td><a href="action.jsp?str=birthdate&val=<%=resultSet.getString("birthdate") %>"><%=resultSet.getString("birthdate") %></a></td>
        <td><a href="action.jsp?str=polis_num&val=<%=resultSet.getString("polis_num") %>"><%=resultSet.getString("polis_num") %></a></td>
        <td><a href="action.jsp?str=pasport_num&val=<%=resultSet.getString("pasport_num") %>"><%=resultSet.getString("pasport_num") %></a></td>
        <td><a href="action.jsp?str=country&val=<%=resultSet.getString("country") %>"><%=resultSet.getString("country") %></a></td>
        <td><a href="action.jsp?str=city&val=<%=resultSet.getString("city") %>"><%=resultSet.getString("city") %></a></td>
        <td><a href="action.jsp?str=district&val=<%=resultSet.getString("district") %>"><%=resultSet.getString("district") %></a></td>
        <td><a href="action.jsp?str=street&val=<%=resultSet.getString("street") %>"><%=resultSet.getString("street") %></a></td>
        <td><a href="action.jsp?str=house_num&val=<%=resultSet.getString("house_num") %>"><%=resultSet.getString("house_num") %></a></td>
        <td><a href="action.jsp?str=building&val=<%=resultSet.getString("building") %>"><%=resultSet.getString("building") %></a></td>
        <td><a href="action.jsp?str=apartment&val=<%=resultSet.getString("apartment") %>"><%=resultSet.getString("apartment") %></a></td>
        <td><a href="action.jsp?str=contact&val=<%=resultSet.getString("contact") %>"><%=resultSet.getString("contact") %></a></td>
        <td><a href="action.jsp?str=email&val=<%=resultSet.getString("email") %>"><%=resultSet.getString("email") %></a></td>
        <td><a href="action.jsp?str=routesheet&val=<%=resultSet.getString("routesheet") %>"><%=resultSet.getString("routesheet") %></a></td>

        <td><a href="edit.jsp?id=<%=resultSet.getInt("id") %>">Изменить</a></td>
        <td><a href="jspDelete.jsp?id=<%=resultSet.getInt("id") %>">Удалить</a></td>
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
