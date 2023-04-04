[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_B]: https://contest.yandex.ru/contest/27393/problems/B/


# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [B. Треугольник][Yandex_AT_01_B]


|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||


Даны три натуральных числа. Возможно ли построить треугольник с такими сторонами. Если это возможно, выведите строку ***YES***, иначе выведите строку ***NO***.

Треугольник — это три точки, не лежащие на одной прямой.


---
### Формат ввода
Вводятся три натуральных числа.


### Формат вывода
Выведите ответ на задачу.


---
### Примеры
|       |Пример 1 |Пример 2 |Пример 3 |
|-------|---------|---------|---------|
|Ввод 1 |3        |3        |4        |
|Ввод 2 |4        |5        |5        |
|Ввод 3 |5        |4        |3        |
|Вывод  |YES      |YES      |YES      |


---
### Решение (Swift)
[AlgorithmicTraining_01_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_01.swift
[AlgorithmicTraining_01_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_01_Tests.swift

1. [AlgorithmicTraining_01_01.swift][AlgorithmicTraining_01_01]
2. [AlgorithmicTraining_01_01_Tests.swift][AlgorithmicTraining_01_01_Tests]

```swift
class AlgorithmicTraining_01 {
    func problem_B(_ line1: String, _ line2: String, _ line3: String) -> String {
        let sides = [Int(line1)!, Int(line2)!, Int(line3)!].sorted()
        
        return sides[0] + sides[1] > sides[2] ? "YES" : "NO"
    }
}

var line1 = readLine()!
var line2 = readLine()!
var line3 = readline()!

var solutions = AlgorithmicTraining_01()
var result = solutions.problem_B(line1, line2, line3)

print(result)
```


---