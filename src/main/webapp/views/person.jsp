<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<%@ page import="domain.Role"%>
<%@ page import="domain.Person"%>

<%
Role r1 = new Role(1l, "директор");
Role r2 = new Role(2l, "бухгалтер");
Role r3= new Role(3l, "менеджер");
Role r4 = new Role(4l, "маркетолог");
Role[] roles = new Role[]{r1, r2, r3, r4};
pageContext.setAttribute("roles", roles);
Person p1 = new Person(1l, "Иван","Иванов", "ivanov@mail.ru", "+7 (961)-289-55-24",1l, r1);
Person p2 = new Person(2l, "Петр","Петров", "petrov@mail.ru", "+7 (961)-289-44-39",2l, r2);
Person p3= new Person(3l, "Сидор","Сидоров", "sidorov@mail.ru", "+7 (961)-289-33-57",3l, r3);
Person p4 = new Person(4l, "Иван","Иванов", "ivanov@mail.ru", "+7 (961)-289-44-39",4l, r4);
Person[] persons = new Person[]{p1, p2, p3, p4};
pageContext.setAttribute("persons", persons);
%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Сотрудники</title>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Persons</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Bootstrap CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<body>
  <div class="container-fluid">
    <jsp:include page="/views/header.jsp" />
    <div class="container-fluid">
      <div class="row justify-content-start ">
        <div class="col-8 border bg-light px-4">
        <br>
          <h3>Список сотрудников</h3>
          <table class="table">
            <thead>
              <th scope="col">Код</th>
              <th scope="col">Фамилия</th>
              <th scope="col">Имя</th>
              <th scope="col">Должность</th>
              <th scope="col">Телефон</th>
              <th scope="col">Эл.почта</th>
              <th scope="col">Редактировать</th>
              <th scope="col">Удалить</th>
            </thead>
            <tbody>
              <c:forEach var="person" items="${persons}">
                <tr>
                  <td>${person.getId()}</td>
                  <td>${person.getLastName()}</td>
                  <td>${person.getFirstName()}</td>
                  <td>${person.getRole()}</td>
                  <td>${person.getPhone()}</td>
                  <td>${person.getEmail()}</td>
                  <td width="20"><a href="#" role="button"
                    class="btn btn-outline-primary">
                    <img alt="Редактировать"
                       src="images/edit.png"></a>
                  </td>
                  <td width="20"><a href="#" role="button"
                    class="btn btn-outline-primary">
                    <img alt="Удалить"
                    src="images/delete.png"></a>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
         </div>
           <div class="col-4 border px-4">
             <form method="POST" action="">
             <br>
               <h3>Новый сотрудник</h3>
               <br>
               <div class="mb-3 row">
                 <label for="lastname"
                   class="col-sm-3 col-form-label">Фамилия</label>
                 <div class="col-sm-7">
                   <input type="text" class="form-control"
                     id="staticLastname"name="lastname" />
                 </div>
               </div>
               <div class="mb-3 row">
                 <label for="firstname"
                   class="col-sm-3 col-form-label">Имя</label>
                   <div class="col-sm-7">
                     <input type="text"
                       class="form-control" id="staticFirstname"
                       name="firstname" />
                   </div>
               </div>
               <div class="mb-3 row">
                 <label for="rolename"
                   class="col-sm-3 col-form-label">Должность</label>
                 <div class="col-sm-7">
                   <select name="role" class="form-control">
                     <option>Выберите должность</option>
                     <c:forEach var="role" items="${roles}">
                       <option value="${role}">
                         <c:out value="${role.getNamerole()}"></c:out>
                       </option>
                     </c:forEach>
                   </select>
                 </div>
               </div>
               <div class="mb-3 row">
                 <label for="phone"
                   class="col-sm-3 col-form-label">Телефон</label>
                 <div class="col-sm-7">
                   <input type="text"
                     class="form-control" id="staticphone"
                     name="phone" />
                 </div>
               </div>
               <div class="mb-3 row">
                 <label for="email"
                   class="col-sm-3 col-form-label">Эл.почта</label>
                 <div class="col-sm-7">
                   <input type="text" class="form-control"
                     id="staticemail" name="email" />
                 </div>
               </div>
               <p> <br>
                 <button type="submit"
                   class="btn btn-primary">Добавить</button>
               </p>
             </form>
           </div>
         </div>
       </div>
       <jsp:include page="/views/footer.jsp" />
    </div>
    <!-- Подключаем Bootstrap Bundle with Popper -->
      <script src="static/js/bootstrap.bundle.min.js"></script>
</body>
</html>