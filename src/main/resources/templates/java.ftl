<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<@c.page>
    <#include "parts/navbar.ftl">
    <#if isAdmin>
        <form method="post" enctype="multipart/form-data">
            <div class="add-task"></div>
            <input type="file" name="file">
            <input class="tag-in" type="text" name="tag" placeholder="Имя прибора">
            <input class="tag-in" type="text" name="text" placeholder="Описание">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            </div>
            <button type="submit">Добавить</button>
        </form>
    </#if>
    <div class="search">
        <form method="get" action="/java">
            <input class="name-in" type="text" name="filter" value="${filter?if_exists}">
            <button type="submit">Найти</button>
        </form>
    </div>
    <#list katas as kata>
        <div class="task">
            <div class="task_question"><div>${kata.tag}</div>
                <#if kata.filename??>
                    <img src="/img/${kata.filename}">
                </#if>
            </div>

            <div class="task_answer">${kata.text}</div>
        </div>
    </#list>
</@c.page>
<style>
    .name-in {
        width: 400px;
        margin-left: 40%;
        margin-top: 30px;
    }
    .search {
        background-color: bisque;
        height: 100px;
        width: 100%;

    }
    .task {
        width: 100%;
        background-color: #EEE2DC;
        border: lightseagreen 5px solid;
        border-radius: 8px;
        margin-top: 10px;
        display: flex;
        word-wrap: break-word;
        max-height: 700px;

    }
    .description {
        font-size: 32px;
    }
    .task_question {
        display: block;
        background-color: #EEE2DC;
        font-size: 32px;
        margin-top: 10px;
        margin-bottom: 10px;
        margin-left: auto;
        margin-right: auto;
        font-family: "Gill Sans MT";
        padding-left: 5px;
        padding-top: 5px;
        word-wrap: break-word;


    }

    .task_answer {
        background-color: #EEE2DC;
        width: 47%;
        font-size: 32px;
        margin-top: 10px;
        margin-left: 10px;
        margin-bottom: 10px;
        font-family: "Gill Sans MT";
        padding-left: 5px;
        padding-top: 5px;
        word-wrap: break-word;
        overflow: auto;

    }

    .text-in {
        width: 500px;
        height: 300px;
    }

    .tag-in {
        width: 300px;
        height: 300px;
    }

    .add-task {
        display: flex;
    }
</style>
