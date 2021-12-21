    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8"%>
        <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href = "style.css">
        <body>
        <title>Данные</title>
        <div class="content">

        <h1 align="center">Данные добавлены</h1>

            <form action="view.jsp" method="POST">
            <input type="submit" value="Постмотреть" />
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
            String street = request.getParameter("street");
            int house_num = Integer.parseInt(request.getParameter("house_num"));
            String building = request.getParameter("building");
            int apartment = Integer.parseInt(request.getParameter("apartment"));


        try{

         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into patients.patients(surname, name, second_name, gender, birthdate, polis_num, pasport_num, country, city, street, house_num, building, apartment) VALUES(  '"+surName+"', '"+firstName+"', '"+lastName+"', '"+gender+"', '"+dateBirth+"','"+polisNum+"', '"+pasportNum+"', '"+country+"', '"+city+"', '"+street+"', '"+house_num+"','"+building+"','"+apartment+"')");

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