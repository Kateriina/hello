        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                <%@page import="net.javaguides.employeemanagement.dao.*"%>
                <!DOCTYPE html>
                <html>
                <head>
                <meta charset="UTF-8">
                <link rel="stylesheet" href = "style.css">
                <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">
                <title>Edit</title>
                </head>
                <body>

                <div class="regform">
                <h1>Изменение данных</h1>
                <form action="edited.jsp" method="POST">
                <input type="hidden" value="${patients.id}" name="id" />
                <table style="with: 80%">

                <tr>
                <td class="info">Фамилия</td>
                <td><input type="text" name="surName" value="${patients.surname}" /></td>
                </tr>

                <tr>
                <td class="info">Имя</td>
                <td><input type="text" name="firstName" value="${patients.name}"/></td>
                </tr>

                <tr>
                <td class="info">Отчество</td>
                <td><input type="text" name="lastName" value="${patients.second_name}"/></td>
                </tr>

                <tr>
                <td class="info">Пол</td>
                </tr>


                <tr>
                <td class="info">Дата рождения</td>
                <td><input type="date" name="dateBirth" max="2021-12-20" value="${patients.birthdate}"/></td>
                </tr>


                <tr>
                <td>Номер полиса</td>
                <td><input type="text" size="16" name="polisNum" value="${patients.polis_num}" /></td>
                </tr>


                <tr>
                <td>Номер паспорта</td>
                <td><input type="text" size="10"  minlength="10" name="pasportNum" value="${patients.pasport_num}"/></td>
                </tr>


                <tr>
                <td class="info">Адрес
                </td>
                </tr>

                <tr>
                <td>Страна</td>
                <td><input type="text" name="country" value="${patients.country}"/></td>
                </tr>

                <tr>
                <td>Город</td>
                <td><input type="text" name="city" value="${patients.city}" /></td>
                </tr>

                <tr>
                <td>Улица</td>
                <td><input type="text" name="street" value="${patients.street}"/></td>
                </tr>

                <tr>
                <td>Дом</td>
                <td><input type="number" name="house_num" value="${patients.house_num}"/></td>
                </tr>


                <tr>
                <td>Корпус</td>
                <td><input type="text" name="building" value="${patients.building}" /></td>
                </tr>

                <tr>
                <td>Квартира</td>
                <td><input type="number" name="apartment" value="${patients.apartment}"/></td>
                </tr>

                <tr>
                <td class="info">Контакты
                </td>
                </tr>

                <tr>
                <td>Телефон</td>
                <td><input type="text" name="contact" value="${patients.contact}"/></td>
                </tr>

                <tr>
                <td>Электронная почта</td>
                <td><input type="email" name="email" value="${patients.email}"/></td>
                </tr>

                <tr>
                <td>Кабинеты</td>
                <td><input type="text" name="cabs" value="${patients.routesheet}"/></td>
                </tr>

                <input type="submit" value="Edit" />
                </table>
        </form>
                </div>
                </body>
        </html>