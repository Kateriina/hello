        <%@ page language="java" contentType="text/html; charset=UTF-8"
                 pageEncoding="UTF-8"%>
                <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
        <html>
                <head>
                         <meta charset="UTF-8">
                         <link rel="stylesheet" href = "style.css">
                         <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">
                </head>

            <body>
                <title>Ошибка</title><div class="regform">
                <h1 align="left">Ошибка при заполнении данных!</h1>
                <p align="left">Пациент с таким полиса/паспорта уже есть в базе.</p>

                <a href="index.jsp">На главную</a>
                <a href="view.jsp">Вернуться к просмотру данных</a>
            </div>
            </body>
        </html>