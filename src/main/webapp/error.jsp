        <%@ page language="java" contentType="text/html; charset=UTF-8"
                 pageEncoding="UTF-8"%>
                <%@page import="java.sql.*,java.util.*"%>
        <!DOCTYPE html>
        <html>
                <head>
                         <meta charset="UTF-8">
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
            font-size: 200%;
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
            </head>

            <body>
                <title>Ошибка</title><div class="regform">
                <h1 align="left">Ошибка при заполнении данных!</h1>

                <a href="index.jsp">На главную</a>
                <a href="view.jsp">Вернуться к просмотру данных</a>
            </div>
            </body>
        </html>