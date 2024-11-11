<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Управление персоналом</title>

    <!-- Настройка viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
 	<div class="container-fluid">
        <jsp:include page="/views/header.jsp" />
        <div class="container">
            <br><br><br>
                <div class="list-group text-center py-3 px-3">
                    <h2>Функции системы</h2>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item list-group-item-primary">
                        <a href="/persons/person">Сотрудники</a>
                        <li class="list-group-item list-group-item-info">
                        <a href="/persons/role">Должности</a>
                    </ul>
               </div>
            <br><br>
        </div>
 	    <br><br><br><br><br><br><br><br><br><br><br><br>
 	    <jsp:include page="/views/footer.jsp" />
    </div>

     <!-- Подключаем Bootstrap Bundle with Popper -->
    <script src="static/js/bootstrap.bundle.min.js"></script>
</body>
</html>
