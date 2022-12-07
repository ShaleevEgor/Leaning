<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<body>

<div class="header">
    <a href="/"><div class="logo_text">Shaleev Practical</div></a>
    <a href="/python"><div class="python">Python</div></a>
    <a href="/java"><div class="java">Java</div></a>
    <a href="/c"><div class="c">C++</div></a>
</div>

<div class="first_task"><div class="first_task_question">
        Вам даны длина и ширина четырехугольника. Многоугольник может быть прямоугольным или квадратным.
        Если это квадрат, вернуть его площадь. Если это прямоугольник, вернуть его периметр.</br>
        <strong>Пример (Вход1, Ввод2 --> Выход): "6, 10 --> 32" "3, 3 --> 9"</strong></div>
    <div class="first_task_answer">
        Решение:</br>
        int area_or_perimeter(int l , int w)</br>
        {</br>
        if(l == w)</br>
        { return l * w; }</br>
        else</br>
        {</br>
        return (l + w) * 2;</br>
        }</br>
        } </div>
</div>


<div class="first_task">
    <div class="first_task_question">
        Ваша задача состоит в том, чтобы сделать две функции (максимум и минимум или максимум и минимум и т. д., в зависимости от языка),
        которые получают на вход список целых чисел и возвращают наибольшее и наименьшее число в этом списке соответственно.</br>
        <strong>Пример: [4,6,2,1,9,63,-134,566]    ->   макс. = 566, мин. = -134</strong></div>

    <div class="second_task_answer_overflow">
        Решение:</br>
        #include "vector"  // "" => < ></br>
            using namespace std;</br>
        </br>
            int min(vector"int" list){</br>
                int min = list[0];</br>
                for(int i = 1; i < list.size(); ++i)</br>
                {</br>
                if(list[i] < min)</br>
                {</br>
                min = list[i];</br>
                }</br>
                }
                return min;</br>
                }</br>
        </br>
                int max(vector"int" list){</br>
                    int max = list[0];</br>
                    for(int i = 1; i < list.size(); ++i)</br>
                    {</br>
                    if(list[i] > max)</br>
                    {</br>
                    max = list[i];</br>
                    }</br>
                    }</br>
                    return max;</br>
                    } </div>
</div>


<div class="first_task">
    <div class="first_task_question">
        Напишите функцию, которая преобразует входную строку в верхний регистр.</div>

    <div class="second_task_answer">
        Решение:</br>
        #include "string"  // "" => < ></br>

            std::string makeUpperCase (const std::string& input_str)</br>
            { std::string temp = input_str;</br>
            for(int i = 0; i < temp.length(); i++){</br>
            temp[i] = toupper(temp[i]);</br>
            }</br>
            return temp;</br>
            } </div>
</div>


<div class="first_task">
    <div class="first_task_question">
        Учитывая набор чисел, верните добавку, обратную каждому из них. Каждое положительное становится отрицательным, а отрицательное становится положительным.</br>
        <strong>Пример: invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]</strong></div>

    <div class="second_task_answer">
        Решение:</br>
        #include "vector"  // "" => < ></br>
            </br>
            std::vector"int" invert(std::vector"int" values)</br>
                    {</br>
                    for (auto &v : values) v = -v;</br>
                    return values;</br>
                    } </div>
</div>


<div class="first_task">
    <div class="first_task_question">
        Нам нужна функция, которая может преобразовать строку в число. Какие способы достижения этого вы знаете?</br>
        Примечание. Не беспокойтесь, все входные данные будут строками, а каждая строка является абсолютно допустимым представлением целого числа.</br>
        <strong>Пример: "1234" --> 1234 и "605"  --> 605</strong></div>

    <div class="second_task_answer">
        Решение:</br>
        using namespace std;</br>
        int string_to_number(const std::string& s) {</br>
        int result;</br>
        stringstream (s) >> result;</br>
        return result;</br>
        } </div>
</div>

<style>
    body {
        background-color: azure;
    }

    a {
        text-decoration: none;
    }

    .header {
        display: flex;
        background-color: lightseagreen;
        width: 100%;
        height: 50px;
        border-radius: 3px;
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

    .c {
        font-size: 20px;
        font-style: italic;
        text-decoration: none;
        line-height: 50px;
        width: 60px;
        text-align: center;
    }
    .first_task {
        width: 100%;
        height: 250px;
        background-color: aqua;
        border: lightseagreen 5px solid;
        border-radius: 8px;
        margin-top: 10px;
        display: flex;
    }



    .first_task_question {
        background-color: aqua;
        width: 50%;
        height: 120px;
        font-size: 23px;
        margin-top: 10px;
        margin-left: 10px;
        font-family: "Gill Sans MT";
        padding-left: 5px;
        padding-top: 5px;
    }

    .first_task_example {
        background-color: azure;
        width: 240px;
        margin-left: 350px;
        border-radius: 2px;
    }

    .second_task_answer {
        float: right;
        margin-left: 170px;
        margin-top: 5px;
        margin-bottom: 5px;
        background-color: azure;
        border-radius: 5px;
        width: 400px;
        font-size: 20px;
        padding-left: 28px;
        padding-top: 5px;

    }

    .second_task_answer_overflow{
        float: right;
        margin-left: 170px;
        margin-top: 5px;
        margin-bottom: 5px;
        background-color: azure;
        border-radius: 5px;
        width: 400px;
        font-size: 20px;
        padding-left: 28px;
        padding-top: 5px;
        overflow: auto;
    }
    .first_task {
        width: 100%;
        height: 250px;
        background-color: aqua;
        border: lightseagreen 5px solid;
        border-radius: 8px;
        margin-top: 10px;
        display: flex;
    }

    .mini_task {
        width: 100%;
        height: 155px;
        background-color: aqua;
        border: lightseagreen 5px solid;
        border-radius: 8px;
        margin-top: 10px;
        display: flex;
    }



    .first_task_answer {
        float: right;
        margin-left: 170px;
        margin-top: 5px;
        margin-bottom: 5px;
        background-color: azure;
        border-radius: 5px;
        width: 400px;
        font-size: 20px;
        padding-left: 28px;
        padding-top: 5px;

    }
</style>
</body>
</html>