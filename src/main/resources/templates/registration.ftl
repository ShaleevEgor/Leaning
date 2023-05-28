<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="login">
        <form action="/registration" method="post">
            <div><label> User Name : <input type="text" name="username"/> </label></div>
            <div><label> Password:   <input type="password" name="password"/> </label></div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <div><input type="submit" value="Sign In"/></div>
        </form>
        <a href="/login">Войти</a>
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
