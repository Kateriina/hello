      <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href = "style.css">
        <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">
        <style>
          a{
          color: #f0feed;
          display: inline-block;
          vertical-align: top;
          margin: 0 10px;
          position: relative;
          text-decoration: none;
          transition: color .2s linear;
          font-size: 300%;
          font-family: 'Montserrat', sans-serif;
          }

          a:hover{
          color: black;
          }
          h1{
          font-size:300%;
          margin-left:10px;
          }
          </style>

        <title>Талон</title>
          <body style="margin-left:5%">
        <h1>Статистический талон готов!</h1>
        <%String addr = "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order102.docx";%>
          <br><a  href="index.jsp">Главное меню</a>

            <%
                String id = request.getParameter("id");

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
                try
                {
                        connection = DriverManager.getConnection(connectionUrl+dbName+"?useUnicode=true&characterEncoding=UTF-8", userId, password);
                statement=connection.createStatement();
                        String sql ="SELECT '***Статистический талон***\n\nФИО:', surname,  name,  second_name, '\n\nПол:', gender,'\n\nДата рождения:', birthdate,'\n\nКабинеты:', routesheet FROM patients where id = "+id+" INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order"+id+".txt'";

                        resultSet = statement.executeQuery(sql);


                }
                catch(Exception e)
                {
                System.out.println(e);
                e.printStackTrace();
                }
            %>

        </body>
        </html>
