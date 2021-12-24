      <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href = "style.css">
        <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">

        <body>
        <title>Статталон</title>

        <h1 align="center">Статистический талон готов</h1>

        <form action="index.jsp" method="POST">
        <input type="submit" value="Главное меню" />
        </form>
            <%
                String id = request.getParameter("id");

                try
                {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients", "root", "root");
                        Statement st=conn.createStatement();
                        String sql ="SELECT * FROM patients where id = "+id+" INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order"+id+".txt' FIELDS TERMINATED BY '\n'";
                        String sql ="SELECT '***Статистический талон***\n\nДата:', CURRENT_DATE(), "+
                       "'\n\nФИО:', surname,  name,  second_name, "+
                       "'\n\nПол:', gender,"+
                       "'\n\nДата рождения:', birthdate,"+
                       "'\n\nНомер полиса:', polis_num,"+
                       "'\n\nНомер паспорта:', pasport_num,"+
                       "'\n\nНомер телефона:', contact,"+
                       "'\n\nПочта:', email,"+
                       "'\n\nКабинеты:', routesheet"+
                        "FROM patients where id = "+id+
                        "INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order"+id+".txt'";

                        ResultSet resultSet = null;
                        resultSet = st.executeQuery(sql);


                }
                catch(Exception e)
                {
                System.out.println(e);
                e.printStackTrace();
                }
            %>

        </body>
        </html>
