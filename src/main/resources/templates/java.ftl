<!DOCTYPE html>
<html lang="en">
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
        public class Solution {</br>
        public static int areaOrPerimeter (int l, int w) {</br>
        int area = 0;</br>
        if(l == w){</br>
        area = l*w;</br>
        } else if(l != w) {</br>
        area = (l+w)*2;</br>
        } return area;</br>
            }</br>
        }   </div>
        </div>


<div class="first_task">
    <div class="first_task_question">
        Ваша задача состоит в том, чтобы сделать две функции (максимум и минимум или максимум и минимум и т. д., в зависимости от языка),
        которые получают на вход список целых чисел и возвращают наибольшее и наименьшее число в этом списке соответственно.</br>
        <strong>Пример: [4,6,2,1,9,63,-134,566]    ->   макс. = 566, мин. = -134</strong></div>

    <div class="second_task_answer">
        Решение:</br>
        import java.util.Arrays;</br>
        public class Kata {</br>
        public int min(int[] list) {</br>
        return Arrays.stream(list).min().getAsInt();</br>
        }</br>
        public int max(int[] list) {</br>
        return Arrays.stream(list).max().getAsInt();</br>
        }</br>
        } </div>
    </div>


<div class="mini_task">
    <div class="first_task_question">
        Напишите функцию, которая преобразует входную строку в верхний регистр.</div>

    <div class="second_task_answer">
        Решение:</br>
        class Upper{</br>
        public static String MakeUpperCase(String str){</br>
        return str.toUpperCase();</br>
        }</br>
        } </div>
</div>


<div class="first_task">
    <div class="first_task_question">
        Учитывая набор чисел, верните добавку, обратную каждому из них. Каждое положительное становится отрицательным, а отрицательное становится положительным.</br>
        <strong>Пример: invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]</strong></div>

    <div class="second_task_answer">
        Решение:</br>
        public class Kata {</br>
        public static int[] invert(int[] array) {</br>
        for(int i = 0; i < array.length; i++) {</br>
        array[i] *= -1;</br>
        }</br>
        return array;</br>
        }</br>
        } </div>
</div>


<div class="mini_task">
    <div class="first_task_question">
        Нам нужна функция, которая может преобразовать строку в число. Какие способы достижения этого вы знаете?</br>
        Примечание. Не беспокойтесь, все входные данные будут строками, а каждая строка является абсолютно допустимым представлением целого числа.</br>
        <strong>Пример: "1234" --> 1234 и "605"  --> 605</strong></div>

    <div class="second_task_answer">
        Решение:</br>
        public class StringToNumber {</br>
        public static int stringToNumber(String str) {</br>
        return Integer.parseInt(str);</br>
        }</br>
        }</div>
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