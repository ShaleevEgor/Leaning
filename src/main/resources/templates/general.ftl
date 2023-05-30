<#include "parts/security.ftl">
<#import "parts/login.ftl" as l>
<#import "parts/common.ftl" as c>

<!DOCTYPE html>
<html lang="ru">
    <meta charset="UTF-8"/>
    <title>SPract</title>

</head>
<body>
<div class="header">
    <a href="/"><div class="logo_text">Имя магазина</div></a>
    <a href="/python"><div class="python">Компьютеры</div></a>
    <a href="/java"><div class="java">Чайники</div></a>
    <a href="/c"><div class="c">Холодильники</div></a>
    <#if user??><div class="cc"></div></#if>

    <#if !user??>
    <a href="/login"><div class="autorization">Авторизоваться</div></a>
    <a href="/registration"><div class="registration">Зарегистрироваться</div></a>
    </#if>
    <div class="name">${name}</div>
    <form action="/logout" method="post" class="button_logout">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input class="button_logout" type="submit" value="выход"/>
    </form>

</div>

<div class="main">Приходите к нам на сайт бытовой техники и откройте свои глаза на мир современных технологий! Здесь вы найдете все, что нужно для комфорта и удобства быта – от электрочайников до холодильников и посудомоечных машин.
    Наш каталог предлагает огромный выбор изделий лучших производителей по доступной цене, а удобный интерфейс позволит быстро и легко найти нужное вам устройство. Мы гарантируем качество и надежность нашей продукции, а также детальную консультацию и поддержку нашего специалистов.
    Не теряйте время на долгие поиски в магазинах – выбирайте бытовую технику у нас на сайте и оставайтесь довольны своим выбором!</div>

<style>
    body {
        background-repeat: no-repeat;
        background-size: cover;
        background-image: url("data:image/jpeg;base64,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");
    }

    .button_logout
    {
        background-color: #EEE2DC;
        margin-left: 20px;
        margin-top: 8px;
        border: none;
        font-size: 15px;
        font-style: italic;

    }

    .main {
        font-size: 30px;
        padding: 10px;
    }

    .header {
        display: flex;
        background-color: #EEE2DC;
        width: 100%;
        height: 50px;
        border-radius: 3px;

    }

    .cc {
        background-color: #EEE2DC;
        width: 770px;
        margin-top: 3px;
    }

    .name {
        background-color: #EEE2DC;
        width: 150px;
        margin-left: 200px;
        text-align: center;
        margin-top: 14px;
        font-style: italic;
        font-size: 20px;


    }
    .logo_text {
        width: 200px;
        font-size: 25px;
        margin-left: 95px;
        margin-right: 100px;
        margin-top: 0px;
        font-style: italic;
        text-decoration: none;
        text-align: center;
        line-height: 50px;
    }

    .logo_text:hover {
        background-color: azure;
        border-radius: 3px;
        transition-delay: 0.1s;
        transition: 0.8s;
    }

    .python:hover {
        background-color: azure;
        border-radius: 3px;
        transition-delay: 0.1s;
        transition: 0.8s;
    }

    .java:hover {
        background-color: azure;
        border-radius: 3px;
        transition-delay: 0.1s;
        transition: 0.8s;
    }

    .c:hover {
        background-color: azure;
        border-radius: 3px;
        transition-delay: 0.1s;
        transition: 0.8s;
    }

    .python {
        margin-right: 20px;
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;

        text-align: center;
    }

    .java {
        margin-right: 20px;
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;

        text-align: center;
    }

    .autorization {
        margin-left: 530px;
        margin-right: 80px;
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;
        width: 60px;
        text-align: center;
    }

    .registration {
        margin-left: 20px;
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;
        width: 60px;
        text-align: center;
    }

    .c {
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;

        text-align: center;
    }

    .main {
        width: 60%;
        height: 800px;
        background-color: azure;
        margin-left: 20%;
        margin-top: 3px;
        border-radius: 3px;
    }
    .footer {
        width: 100%;
        height: 70px;
        background-color: black;
        margin-top: 5px;
        border-radius: 3px;
    }
    a {
        text-decoration: none;
    }

    .author {
        padding-top: 10px;
        margin-left: 10px;
        text-decoration: white;
        color: red;

    }
</style>


</body>
</html>
