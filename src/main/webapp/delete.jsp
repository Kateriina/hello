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
		<title>Удаление</title>
		<div class="content">

		<h1 align="center">Данные удалены</h1>

		<form action="view.jsp" method="POST">
		<input type="submit" value="Посмотреть" />
		</form>

			<%
		String id = request.getParameter("id");

PreparedStatement ps = null;
        try{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients", "root", "root");
           String sql = "DELETE FROM patients WHERE id="+id;
			ps = con.prepareStatement(sql);
			int i = ps.executeUpdate();
                System.out.println("Data is successfully deleted!");
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