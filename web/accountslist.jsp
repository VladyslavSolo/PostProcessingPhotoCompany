<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Все пользователи</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/half-slider.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color:#210021;">
    <div class="container">
        <a class="navbar-brand" href="/">GLITCH AND NEON <sup>make fantasy a reality!</sup></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Главная страница</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/userlist">Список пользователей</a>
                </li>
                <li class="nav-item" >
                    <a class="nav-link" href="/registration">Зарегистрироться</a>
                </li>
                <li class="nav-item">
                    <a style="color:#fff40f">   ${username}</a>
                </li>
            </ul>
        </div>
    </div>
</nav>



<!-- Page Content -->
<section class="py-5">
    <div class="container">
        <table class="table">
            <caption>
            </caption><tbody>
        <tr>
            <th>Логин</th>
            <th>Имя и Фамилия</th>
            <th>email</th>
            <th>icq</th>
            <th>Пол</th>
            <th>Подписка</th>
            <th></th>
        </tr>
        <c:forEach items="${list}" var="user">



            <tr>
                <input type="hidden" name="table_id" value="${user.getId()}"/>
            <td>  ${user.login}</td>
            <td> ${user.name} ${user.surname}</td>
            <td>${user.email} </td>
            <td> ${user.icq} </td>
            <td><c:choose>
                <c:when test = "${true eq user.sex}">Женский</c:when>
                <c:otherwise>Мужской</c:otherwise>
            </c:choose> </td>
            <td> ${user.newsletter} </td>

            <td class="deleteRow"><button type="button" id="reset" class="btn btn-danger" autocomplete="off">Удалить пользователя</button></td>
            <!--<td><a href="delQuiz?id=0" content=" ">Delete</a></td>-->
        </tr>

            </c:forEach>

        </tbody>
        </table>
    </div>
</section>

<!-- Footer -->
<footer class="py-3" style="background-color:#210021;">
    <div class="container">
        <p class="m-0 text-center text-white">Профессиональная студия по постобработке фотографий</p>
        <p class="m-0 text-center text-white">Сайт сделан Солоповым Владиславом &copy;glitchandneon.com 2018</p>
    </div>
    <!-- /.container -->
</footer>




<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".deleteRow").click(function (evt) {
            var selectId = $(this).closest("tr").find("[name='table_id']").val();

            $.ajax({
                type: 'DELETE',
                url: "/userlist?id=" + selectId,
                success: function () {
                    if (evt.target.closest('.deleteRow')) {
                        evt.target.closest('tr').remove()
                    }
                }
            })
        });
    });

</script>
</body>

</html>
