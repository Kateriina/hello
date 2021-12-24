<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html>
    <html>
        <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href = "style.css">
        <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">

        <body>
            <title>Удаление</title>

            <h1 align="center">Данные удалены</h1>

            <form action="view.jsp" method="POST">
                <input type="submit" value="Посмотреть" />
            </form>
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
