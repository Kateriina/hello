    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8"%>
        <%@page import="java.sql.*,java.util.*"%>
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fi">
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


        <title>Данные</title>
        </head>
        <body style="margin-left:5%">
        <h1>Данные добавлены!</h1>
        <br><a  href="addingData.jsp">Добавить еще одного пациента</a>
        <br><a  href="view.jsp">Просмотр данных</a>
        <br><a  href="index.jsp">Главное меню</a>


            <%
            request.setCharacterEncoding("UTF-8");
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
            String cabs = request.getParameter("cabs");
        try{

         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients?useUnicode=true&characterEncoding=UTF-8", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into patients.patients(surname, name, second_name, gender, birthdate, polis_num, pasport_num, country, city, district, street, house_num, building, apartment, contact, email, routesheet) VALUES(  '"+surName+"', '"+firstName+"', '"+lastName+"', '"+gender+"', '"+dateBirth+"','"+polisNum+"', '"+pasportNum+"', '"+country+"', '"+city+"', '"+district+"', '"+street+"', '"+house_num+"','"+building+"','"+apartment+"', '"+contact+"', '"+email+"', '"+cabs+"')");

            System.out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
                System.out.print(e);
                response.sendRedirect("error.jsp");
				return;

        }

        %>

        </body>
        </html>