        <%@page import="java.sql.DriverManager"%>
                <%@page import="java.sql.ResultSet"%>
                <%@page import="java.sql.Statement"%>
                <%@page import="java.sql.Connection"%>
        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@page import="net.javaguides.employeemanagement.dao.*"%>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">

        <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href = "style.css">
        <style>td{ font-size: 130%; }</style>
        <title>Edit</title>
        </head>
        <body>
                        <%
             String idd = request.getParameter("id");
                System.out.println("idd = " + idd);
            %>
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
                try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();

                String sql ="SELECT * FROM patients WHERE id ="+idd;

                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){


            %>
        <div class="regform">
        <h1>Изменение данных</h1>

        <form action="edited.jsp?id=<%=idd%>" method="POST" accept-charset="UTF-8">
        <table style="with: 80%">
        <tr>
        <td class="info">Данные
        </td>
        </tr>
        <tr>
        <td>Фамилия</td>
        <td><input type="text" name="surName" value = "<%=resultSet.getString("surname") %>" /></td>
        </tr>

        <tr>
        <td>Имя</td>
        <td><input type="text" name="firstName" value = "<%=resultSet.getString("name") %>"/></td>
        </tr>

        <tr>
        <td>Отчество</td>
        <td><input type="text" name="lastName" value = "<%=resultSet.getString("second_name") %>"/></td>
        </tr>

        <tr>
        <td>Пол</td>
        </tr>


        <tr>
        <td class="info">Дата рождения</td>
        <td><input type="date" name="dateBirth" max="2021-12-20" value = "<%=resultSet.getString("birthdate") %>"/></td>
        </tr>


        <tr>
        <td>Номер полиса</td>
        <td><input type="text" size="16" minlength="16" name="polisNum" value = "<%=resultSet.getString("polis_num") %>"/></td>
        </tr>


        <tr>
        <td>Номер паспорта</td>
        <td><input type="text" size="10"  minlength="10" name="pasportNum" value = "<%=resultSet.getString("pasport_num") %>"/></td>
        </tr>


        <tr>
        <td class="info">Адрес
        </td>
        </tr>

        <tr>
        <td>Страна</td>
        <td><input type="text" name="country" value = "<%=resultSet.getString("country") %>"/></td>
        </tr>

        <tr>
        <td>Город</td>
        <td><input type="text" name="city" value = "<%=resultSet.getString("city") %>" /></td>
        </tr>

        <tr>
        <td>Район</td>
        <td><input type="text" name="district" value = "<%=resultSet.getString("district") %>" /></td>
        </tr>

        <tr>
        <td>Улица</td>
        <td><input type="text" name="street" value = "<%=resultSet.getString("street") %>"/></td>
        </tr>

        <tr>
        <td>Дом</td>
        <td><input type="number" name="house_num" value = "<%=resultSet.getString("house_num") %>"/></td>
        </tr>


        <tr>
        <td>Корпус</td>
        <td><input type="text" name="building" value = "<%=resultSet.getString("building") %>" /></td>
        </tr>

        <tr>
        <td>Квартира</td>
        <td><input type="number" name="apartment" value = "<%=resultSet.getString("apartment") %>"/></td>
        </tr>

        <tr>
        <td class="info">Контакты
        </td>
        </tr>

        <tr>
        <td>Телефон</td>
        <td><input type="text" name="contact" value = "<%=resultSet.getString("contact") %>"/></td>
        </tr>

        <tr>
        <td>Электронная почта</td>
        <td><input type="email" name="email" value = "<%=resultSet.getString("email") %>"/></td>
        </tr>

        <tr>
        <td>Кабинеты</td>
        <td><input type="text" name="cabs" value = "<%=resultSet.getString("routesheet") %>"/></td>
        </tr>



                <% }

                } catch (Exception e) {
                e.printStackTrace();
                } %>

        </table>
                <input type="submit" value="Изменить" />
        </form>
        </div>
        </body>
        </html>

