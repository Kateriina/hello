    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>
            <head>
            <meta charset="UTF-8" />
            <link rel="stylesheet" href = "style.css">
            <title>Данные пациента</title>
            </head>
            <body>
            <p>Фамилия: <%= request.getParameter("surName") %></p>
            <p>Имя: <%= request.getParameter("firstName") %></p>
            <p>Отчество: <%= request.getParameter("lastName") %></p>


            <p>Пол: <%= request.getParameter("gender") %></p>



            <p>Дата рождения: <%= request.getParameter("dateBirth") %></p>
            <p>Номер полиса: <%= request.getParameter("polisNum") %></p>

            <p>Паспорт</p>
            <p>Серия паспорта: <%= request.getParameter("passpSer") %></p>
            <p>Номер паспорта: <%= request.getParameter("passpNum") %></p>

            <p>Адрес</p>
            <p>Страна: <%= request.getParameter("country") %></p>
            <p>Город: <%= request.getParameter("city") %></p>
            <p>Улица: <%= request.getParameter("street") %></p>
            <p>Дом: <%= request.getParameter("house_num") %></p>
            <p>Корпус: <%= request.getParameter("building") %></p>
            <p>Квартира: <%= request.getParameter("appartment") %></p>


            <p>Контакты</p>
            <p>Телефон: <%= request.getParameter("contact") %></p>
            <p>Электронная почта: <%= request.getParameter("email") %></p>

            </ul>
            </body>
            </html>