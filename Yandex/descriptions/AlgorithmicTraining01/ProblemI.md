[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_I]: https://contest.yandex.ru/contest/27393/problems/I/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [I. Узник замка Иф][Yandex_AT_01_I]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||

За многие годы заточения узник замка Иф проделал в стене прямоугольное отверстие размером ${D × E}$. Замок Иф сложен из кирпичей, размером ${A × B × C}$. Определите, сможет ли узник выбрасывать кирпичи в море через это отверстие, если стороны кирпича должны быть параллельны сторонам отверстия.


---
### Формат ввода
Программа получает на вход числа ${A, B, C, D, E}$.


### Формат вывода
Программа должна вывести слово ***YES*** или ***NO***.


---
### Примеры
|           |Пример 1   |Пример 2   |
|-----------|-----------|-----------|
|Ввод ${A}$ |1          |2          |
|Ввод ${B}$ |1          |2          |
|Ввод ${C}$ |1          |2          |
|Ввод ${D}$ |1          |1          |
|Ввод ${E}$ |1          |1          |
|Вывод      |YES        |NO         |


### Примечания
В первом примере по первому пути поезда ходят через 1 минуту. По второму — через 3. Стоя на платформе 5, 6 или 7 минут, Таня могла насчитать 3 поезда на первом пути и 2 на втором.


---
### Решение (Swift)
[AlgorithmicTraining_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01.swift
[AlgorithmicTraining_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_Tests.swift

1. [AlgorithmicTraining_01.swift][AlgorithmicTraining_01]
2. [AlgorithmicTraining_01_Tests.swift][AlgorithmicTraining_01_Tests]

```swift
import Foundation

class AlgorithmicTraining_01 {
    func problem_I(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int) -> String {
        let holeSizes = [d, e].sorted()
        let brickSizes = [a, b, c].sorted()
        
        if brickSizes[0] <= holeSizes[0] && brickSizes[1] <= holeSizes[1] {
            return "YES"
        }

        return "NO"
    }
}

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!

let solution = AlgorithmicTraining_01()
let result = solution.problem_I(a, b, c, d, e)

print("\(result)")
```


---