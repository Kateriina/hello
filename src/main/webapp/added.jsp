    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8"%>
        <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href = "style.css">
        <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">

        <body>
        <title>Данные</title>
        <div class="content">

        <h1 align="center">Данные добавлены</h1>

            <form action="view.jsp" method="POST">
            <input type="submit" value="Посмотреть" />
            </form>

            <form action="${pageContext.request.contextPath}/hello-servlet">
            <button type="button" name="button" value="button1">Посмотреть пациентов</button>
            <button type="button" name="button" value="button2">Добавить пациента</button>
            </form>
            <%

            String surName = request.getParameter("surName");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");


            String gender = request.getParameter("gender");
            String dateBirth = request.getParameter("dateBirth");

            String polisNum = request.getParameter("polisNum");

            String pasportNum = request.getParameter("pasportNum");

            String country = request.getParameter("country");
            String city = request.getParameter("city");
            String district = request.getParameter("district");

            String street = request.getParameter("street");
            int house_num = Integer.parseInt(request.getParameter("house_num"));
            String building = request.getParameter("building");
            int apartment = Integer.parseInt(request.getParameter("apartment"));
            String contact = request.getParameter("contact");
            String email = request.getParameter("email");
            String cabs = request.getParameter("routesheet");

        try{

         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into patients.patients(surname, name, second_name, gender, birthdate, polis_num, pasport_num, country, city, district, street, house_num, building, apartment, contact, email, routesheet) VALUES(  '"+surName+"', '"+firstName+"', '"+lastName+"', '"+gender+"', '"+dateBirth+"','"+polisNum+"', '"+pasportNum+"', '"+country+"', '"+city+"', '"+district+"', '"+street+"', '"+house_num+"','"+building+"','"+apartment+"', '"+contact+"', '"+email+"', '"+cabs+"')");

            System.out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();

        }


        %>

        </div>
        </body>
        </html>