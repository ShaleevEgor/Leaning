<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<@c.page>

    <#include "parts/navbar.ftl">
    <#if isAdmin>
    <form method="post">
        <div class="add-task"></div>
            <input class="text-in" type="text" name="text" placeholder="Текст задачи" />
            <input class="tag-in" type="text" name="tag" placeholder="Ответ">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
        </div>
        <button type="submit">Добавить</button>
    </form>
    </#if>
    <#list katas as kata>
    <div class="task">
        <div class="task_question">${kata.text}</div>
        <div class="task_answer">${kata.tag}</div>
    </div>
    </#list>
</@c.page>
<style>
    .task {
        width: 100%;
        background-color: aqua;
        border: lightseagreen 5px solid;
        border-radius: 8px;
        margin-top: 10px;
        display: flex;
        word-wrap: break-word;
        max-height: 400px;

    }

    .task_question {
        background-color: aqua;
        width: 47%;
        font-size: 23px;
        margin-top: 10px;
        margin-bottom: 10px;
        margin-left: 10px;
        font-family: "Gill Sans MT";
        padding-left: 5px;
        padding-top: 5px;
        word-wrap: break-word;


    }

    .task_answer {
        background-color: azure;
        width: 47%;
        font-size: 16px;
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
        width: 500px;
        height: 300px;
    }

    .add-task {
        display: flex;
    }
</style>
