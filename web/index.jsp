<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Постобработка фотографий</title>

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
                <li class="nav-item active">
                    <a class="nav-link" href="/">Главная страница
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/userlist">Список пользователей</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/registration">Зарегистрироться</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Выйти</a>
                </li>
                <li class="nav-item">
                </li>
                <li class="nav-item">
                    <a style="color: #fff40f">   ${username}</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>


        </ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('https://i.ytimg.com/vi/isIj3tuQTDY/maxresdefault.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <p></p>
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('https://image.ibb.co/d2Kj7d/image.jpg')">
            </div>

            <div class="carousel-item" style="background-image: url('https://pbs.twimg.com/media/DUJXZYlVQAEXMSe.jpg')">
                </div>
            <div class="carousel-item" style="background-image: url('https://image.ibb.co/c5Rxqy/2049_runner.jpg')">
            </div>

            <div class="carousel-item" style="background-image: url('https://i.pinimg.com/originals/78/1b/35/781b3516c7a618f12080ac70e127784d.jpg')">
            </div>

            <div class="carousel-item" style="background-image: url('https://image.ibb.co/cKmV8J/cyberpunk.png')">
            </div>



        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="ca rousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<section class="py-5">
    <div class="container">
        <h1>Постобработка фотографий (Post-Production)</h1>
        <p>С помощью ретуши можно спасти фотографию, какая на первый взгляд кажется безнадежной, или же наоборот, неумелая обработка фотографий может испортить идеальный кадр.</p>

        <p>Если у вас была фотосессия, но вы недовольны снимками какие получились в итоге, мы с радостью поможем вам добиться желаемого результата при помощи Post-Production-услуги. Также мы можем помочь с обработкой фотографам, которые хотят сэкономить время и передать монотонную работу по обработке фотографий профессиональным ретушерам. Мы поможем восстановить фотографии, провести цветокоррекцию, удалить деффекты со снимка, изменить фон и исправить искажения.</p>

        <h1>Почему мы:</h1>
        <p>Команда опытных профессионалов (у нас работают штатные ретушеры, которые занимаются только постобработкой)
            Быстрая обработка фотографий
            Полная конфиденциальность
            Самая большая фотостудия Киева с большим опытом съемки и Post-Production</p>
        <h2>Как заказать ретушь или цветокоррекцию фотографий:</h2>
        <ul>
            <li>Шаг 1. Вы связываетесь с нами, делитесь пожеланиями по работе.</li>
            <li>Шаг 2. Мы уточняем детали, предоставляем информацию по срокам и стоимости заказа.</li>
            <li>Шаг 3. Отправляете нам фотографии, оплачиваете заказ post-production.</li>
            <li>Шаг 4. Вы получаете готовые фотографии.</li>
        </ul>

        <h3>glitchandneon@email.com <p>+8-800-555-3-555 <p> </p></h3>




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

</body>

</html>