
  <%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
   <!DOCTYPE html>
   <html>
   <head>
   <meta charset="UTF-8">
   <link rel="stylesheet" href = "style.css">
   <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@100;400;600&family=Open+Sans:wght@700&display=swap" rel="stylesheet">

   <title>Registry</title>
   </head>
   <body>
   <div class="regform">
   <h1>Добавление пациента</h1>
    <form action="add.jsp" method="POST">
   <table style="with: 80%">

   <tr>
   <td class="info">Фамилия</td>
   <td><input type="text" name="surName" /></td>
   </tr>

   <tr>
   <td class="info">Имя</td>
   <td><input type="text" name="firstName" /></td>
   </tr>

   <tr>
   <td class="info">Отчество</td>
   <td><input type="text" name="lastName" /></td>
   </tr>

   <tr>
   <td class="info">Пол</td>
   <td><input type="radio" name="gender" value="Ж" checked/>F
   <input type="radio" name="gender" value="М"/>M</td>
   </tr>

   <tr>
   <td class="info">Дата рождения</td>
   <td><input type="date" name="dateBirth" max="2021-12-20"/></td>
   </tr>


   <tr>
   <td>Номер полиса</td>
   <td><input type="text" size="16" name="polisNum"  /></td>
   </tr>

   <tr>
   <td class="info">Паспорт
   </td>
   </tr>

   <tr>
   <td>Серия паспорта</td>
   <td><input type="text" size="4" minlength="4" name="passpSer" /></td>
   </tr>

   <tr>
   <td>Номер паспорта</td>
   <td><input type="text" size="6"  minlength="6" name="passpNum" /></td>
   </tr>


   <tr>
   <td class="info">Адрес
   </td>
   </tr>

   <tr>
   <td>Страна</td>
   <td><input type="text" name="country" /></td>
   </tr>

   <tr>
   <td>Город</td>
   <td><input type="text" name="city" /></td>
   </tr>

   <tr>
   <td>Улица</td>
   <td><input type="text" name="street" /></td>
   </tr>

   <tr>
   <td>Дом</td>
   <td><input type="number" name="house_num" /></td>
   </tr>


   <tr>
   <td>Корпус</td>
   <td><input type="text" name="building" /></td>
   </tr>

   <tr>
   <td>Квартира</td>
   <td><input type="number" name="apartment" /></td>
   </tr>

   <tr>
   <td class="info">Контакты
   </td>
   </tr>

   <tr>
   <td>Телефон</td>
   <td><input type="text" name="contact" /></td>
   </tr>

   <tr>
   <td>Электронная почта</td>
   <td><input type="email" name="email" /></td>
   </tr>

   </table>
   <input type="submit" value="Добавить" />


   </form>
   </div>
   </body>
   </html>