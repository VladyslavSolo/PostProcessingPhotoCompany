<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Зарегистрироться</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/half-slider.css" rel="stylesheet">
    <style>
        .form-control[type=text]:valid {
            color: green
        }
        .form-control[type=text]:invalid {
            color: red
        }
    </style>

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
                    <a class="nav-link" href="/">Главная страница
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/userlist">Список пользователей</a>
                </li>
                <li class="nav-item active" >
                    <a class="nav-link" href="/registration">Зарегистрироться</a>
                </li>
                <li class="nav-item">
                    <a style="color: aliceblue">${username}</a>
                </li>
            </ul>
        </div>
    </div>
</nav>



<!-- Page Content -->
<section class="py-5">
    <div class="container">
        <p>
        <h1>  Зарегистрироваться</h1>
        </p>
        <hr>
        <p>Примечание *чтобы увидеть примечание -наведите курсор на поле ввода</p>
        <form onsubmit="validate(event)"> <!-- data-toggle="validator" role="form"-->

            <div class="form-row">

                <div class="col">
                    <input id="field1" type="text" class="form-control" pattern="[а-яА-Яa-zA-Z0-9_-]{4,12}" autofocus required title="Введите от 4 до 12 символов" placeholder="Введите логин">
                </div>

            </div>
            <p>
            <div class="form-row">
                <div class="col">
                    <input id="field2" type="text" class="form-control" pattern="[A-Za-zА-Яа-яЁё]+" autofocus placeholder="Введите Ваше имя" required>
                </div>
            </div>
            <p>
            <div class="form-row">
                <div class="col">
                    <input id="field3" type="text" class="form-control" pattern="[A-Za-zА-Яа-яЁё]+" autofocus placeholder="Введите Вашу фамилию" required>
                </div>
            </div>
            <p>
            <div class="form-row">
                <div class="col">
                    <input id="field4" type="text" class="form-control" required autofocus pattern="^[-a-z0-9!#$%&'*+/=?^_`{|}~]+(?:\.[-a-z0-9!#$%&'*+/=?^_`{|}~]+)*@(?:[a-z0-9]([-a-z0-9]{0,61}[a-z0-9])?)*[\.]{1}(?:aero|arpa|asia|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|tel|travel|[a-z][a-z])$" placeholder="Введите Ваш e-mail">
                </div>
            </div>
            <p>
            <div class="form-row">
                <div class="col">
                    <input id="field5" type="text" class="form-control" pattern="^([0-9]-?){7,8}[0-9]$" autofocus required title="Введите ICQ номер, формата: xxx-xxx-xxx или xxx-xxx-xx или xx-xxx-xxx или xxxxxxxxx" placeholder="Введите ваш ICQ">
                </div>
            </div>
            <p>
            <div class="form-row">
                <label for="name">Выберите ваш пол:</label>
                <select id="name" class="form-control">
                    <option>Мужской</option>
                    <option>Женский</option>
                </select>
            </div>
            <div class="form-group">

                <label for="inputPassword" class="control-label">Введите пароль</label>
                <div class="form-inline row">
                    <div class="form-group col-sm-6">
                        <input type="password" data-minlength="6" data-toggle="validator" class="form-control" id="inputPassword" placeholder="Пароль"
                               pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$" autofocus required title="Введите пароль от 6 до 12 символов. Пароль должен содержать обязательно большие и маленькие буквы, цифры. Допустимы а так же символы: ?=.*-" >
                    </div>
                    <div class="form-group col-sm-6">
                        <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Ошибка! Пароли не совпадают!" placeholder="Повторите пароль" autofocus required
                               title="Пароли должны совпадать!" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$" >
                        <div class="help-block with-errors"></div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="terms">
                        Подписаться на рассылку
                    </label>
                    <div class="help-block with-errors"></div>
                </div>
            </div>

            <input type="submit" id="submit" class="btn btn-primary" style="background-color:#210021;" value="Зарегистрироваться" >
            <input type="button" onclick="clearFields()" class="btn btn-primary" style="background-color:#210021;" value="Очистить все поля"/>
        </form>


        <hr>
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



<script>

    function clearFields() {
        document.getElementById("field1").value = "";
        document.getElementById("field2").value = "";
        document.getElementById("field3").value = "";
        document.getElementById("field4").value = "";
        document.getElementById("field5").value = "";
        document.getElementById("inputPassword").value = "";
        document.getElementById("inputPasswordConfirm").valuex = "";
    }

    function validate(event) {
        event.preventDefault();

        if(document.getElementById("inputPassword").value !== document.getElementById("inputPasswordConfirm").value) {
            alert("Пароли различны. Повторите попытку")

        } else {
            var isCheckboxChecked = false;
            if(document.getElementById("terms").checked) {
                isCheckboxChecked = true;
            }
            var data = {
                login: document.getElementById("field1").value,
                name: document.getElementById("field2").value,
                surname: document.getElementById("field3").value,
                email: document.getElementById("field4").value,
                icq: document.getElementById("field5").value,
                gender: document.getElementById("name").value,
                subscribe : isCheckboxChecked,
                password: document.getElementById("inputPassword").value

            };
            $.ajax({

                type: 'POST',
                url: '/registration',
                data: data,

                success: function (data) {
                    alert('Поздравляем, вы успешно зарегистрированы!');
                    window.location.href = "/"
                }
            });
            event.preventDefault()
        }

    }

</script>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

