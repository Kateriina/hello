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


    <title>Удалены</title>
    </head>
    <body style="margin-left:5%">
    <h1>Данные удалены!</h1>
    <br><a  href="addingData.jsp">Добавить пациента</a>
    <br><a  href="view.jsp">Просмотр данных</a>
    <br><a  href="index.jsp">Главное меню</a>
            <%
                String id = request.getParameter("id");

                try
                {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients", "root", "root");

                        Statement st=conn.createStatement();
                        int i=st.executeUpdate("DELETE FROM patients WHERE id = " + id );

                        System.out.println("Data Deleted Successfully!");
                }
                catch(Exception e)
                {
                System.out.println(e);
                e.printStackTrace();
                }
            %>

        </body>
    </html>
