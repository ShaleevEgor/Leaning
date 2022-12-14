<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="login">
        <@l.login "/login" />
        <a href="/registration">Регистрация</a>
    </div>


    <style>
        body {
            background-image: url("https://html-templates.info/wp-content/uploads/140520040145.jpg");

        }
        * {
            justify-content: center;
        }
        .login
        {
            justify-content: center;
            margin-left: 44%;
            margin-top: 400px;
            width: 200px;
            height: 200px;
            font-size: 28px;
            opacity: 1;
            color: white;
        }

        a {
            text-decoration: none;
            color: white;
        }
    </style>
</@c.page>