<%--
	Document   : role.jsp
	Create on  : 15.05.2023
	Author     : Dolzhenko A.
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="domain.Role"%>

<%
Role r1 = new Role(1l, "директор");
Role r2 = new Role(2l, "бухгалтер");
Role r3= new Role(3l, "менеджер");
Role r4 = new Role(4l, "маркетолог");
Role r5 = new Role(5l, "секретарь");
Role[] roles = new Role[]{r1, r2, r3, r4, r5};
int length = roles.length;
pageContext.setAttribute("roles", roles);
%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Должности</title>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Roles</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<!-- Bootstrap CSS -->
<!-- Подключаем Bootstrap CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<div class="container-fluid">
		<jsp:include page="/views/header.jsp" />
		<div class="container-fluid">
			<div class="row justify-content-start ">
				<div class="col-8 border bg-light px-4">
					<h3>Список должностей</h3>
					<table class="table">
						<thead>
							<th scope="col">Код</th>
							<th scope="col">Должность</th>
							<th scope="col">Редактировать</th>
							<th scope="col">Удалить</th>
						</thead>
						<tbody>
							<c:forEach var="role" items="${roles}">
								<tr>
									<td>${role.getId()}</td>
									<td>${role.getNamerole()}</td>
									<td width="20"><a href="#" role="button"
										class="btn btn-outline-primary"> <img alt="Редактировать"
											src="images/edit.png"></a></td>
									<td width="20"><a href="#" role="button"
										class="btn btn-outline-primary"> <img alt="Удалить"
											src="images/delete.png"></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-4 border px-4">
					<form method="POST" action="">
						<br>
						<h3>Новая должность</h3>
						<div class="mb-3">
							<br> <label for="inputRole" class="col-sm-3 col-form-label">Должность</label>
							<div class="col-sm-6">
								<input type="text" name="inputRole" class="form-control"
									id="personRole" />
							</div>
						</div>
						<p>
							<br> <br> <br>
							<button type="submit" class="btn btn-primary">Добавить</button>
							<br>
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
