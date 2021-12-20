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

                        <%

            String surName = request.getParameter("surName");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");


            String gender = request.getParameter("gender");


            String polisNum = request.getParameter("polisNum");

            String passpSer = request.getParameter("passpSer");

            String passpNum = request.getParameter("passpNum");

            String country = request.getParameter("country");
            String city = request.getParameter("city");
            String street = request.getParameter("street");
            int house_num = Integer.parseInt(request.getParameter("house_num"));
            String building = request.getParameter("building");
            int apartment = Integer.parseInt(request.getParameter("apartment"));


        try{

         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registry", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into registry.patients(surname, name, second_name, gender, polis_num)VALUES(  '"+surName+"', '"+firstName+"', '"+lastName+"', '"+gender+"', '"+polisNum+"')");

           int j=st.executeUpdate("INSERT INTO registry.pasport (series, num) VALUES ( '"+passpSer+"', '"+passpNum+"')");
           int k=st.executeUpdate("INSERT INTO registry.address (country, city, street, house_num, building, apartment) VALUES ( '"+country+"', '"+city+"', '"+street+"', '"+house_num+"','"+building+"','"+apartment+"')");

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