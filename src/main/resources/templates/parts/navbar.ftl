<#include "security.ftl">
<#import "login.ftl" as l>
<div class="header">
<a href="/"><div class="logo_text">Shaleev Practical</div></a>
<a href="/python"><div class="python">Python</div></a>
<a href="/java"><div class="java">Java</div></a>
<a href="/c"><div class="c">C++</div></a>
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
<style>
    .button_logout
    {
        background-color: lightseagreen;
        margin-left: 20px;
        margin-top: 8px;
        border: none;
        font-size: 15px;
        font-style: italic;

    }

    .header {
        display: flex;
        background-color: lightseagreen;
        width: 100%;
        height: 50px;
        border-radius: 3px;

    }

    .cc {
        background-color: lightseagreen;
        width: 770px;
        margin-top: 3px;
    }

    .name {
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
        width: 70px;
        text-align: center;
    }

    .java {
        margin-right: 20px;
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;
        width: 60px;
        text-align: center;
    }

    .autorization {
        margin-left: 550px;
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
        width: 60px;
        text-align: center;
    }

    a {
        text-decoration: none;
    }

</style>