    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
             pageEncoding="ISO-8859-1"%>
            <!DOCTYPE html>
            <html>
            <head>
            <meta charset="UTF-8" />
            <title>User Info</title>
            </head>
            <body>
            <p>Фамилия: <%= request.getParameter("surName") %></p>
            <p>Имя: <%= request.getParameter("firstName") %></p>
            <p>Отчество: <%= request.getParameter("lastName") %></p>


            <p>Пол: <%= request.getParameter("gender") %></p>



            <p>Дата рождения: <%= request.getParameter("surName") %></p>
            <p>Номер полиса: <%= request.getParameter("firstName") %></p>

            <p>Паспорт</p>
            <p>Серия паспорта: <%= request.getParameter("lastName") %></p>
            <p>Номер паспорта: <%= request.getParameter("lastName") %></p>

            <p>Адрес</p>
            <p>Страна: <%= request.getParameter("lastName") %></p>
            <p>Город: <%= request.getParameter("lastName") %></p>
            <p>Улица: <%= request.getParameter("lastName") %></p>
            <p>Дом: <%= request.getParameter("lastName") %></p>
            <p>Корпус: <%= request.getParameter("lastName") %></p>
            <p>Квартира: <%= request.getParameter("lastName") %></p>


            <p>Контакты</p>
            <p>Телефон: <%= request.getParameter("lastName") %></p>
            <p>Электронная почта: <%= request.getParameter("lastName") %></p>

            </ul>
            </body>
            </html>