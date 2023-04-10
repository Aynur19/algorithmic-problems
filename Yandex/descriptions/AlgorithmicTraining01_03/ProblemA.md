[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_03_orig]: https://contest.yandex.ru/contest/27663/
[Yandex_AT_01_03_A]:https://contest.yandex.ru/contest/27663/problems/A/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 3][Yandex_AT_01_03_orig]
## [A. Количество различных чисел][Yandex_AT_01_03_A]

|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||

Дан список чисел, который может содержать до ${100000}$ чисел. Определите, сколько в нем встречается различных чисел.


---
### Формат ввода
Вводится список целых чисел. Все числа списка находятся на одной строке.


### Формат вывода
Выведите ответ на задачу.


---
### Примеры
|           |Ввод                   |Вывод  |
|-----------|-----------------------|-------|
|Пример 1   |1 2 3 2 1              |3      |
||||
|Пример 2   |1 2 3 4 5 6 7 8 9 10   |10     |
||||
|Пример 3   |1 2 3 4 5 1 2 1 2 7 3  |6      |
|||


---
### Решение (Swift)
[AlgorithmicTraining_01_03]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_03.swift
[AlgorithmicTraining_01_03_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_03_Tests.swift

1. [AlgorithmicTraining_01_03.swift][AlgorithmicTraining_01_03]
2. [AlgorithmicTraining_01_03_Tests.swift][AlgorithmicTraining_01_03_Tests]

```swift
import Foundation


let solution = AlgorithmicTraining_01_03()

let nums = readLine()!
let result = solution.problem_A(nums)

print(result)


class AlgorithmicTraining_01_03 {
    func problem_A(_ nums: String) -> Int {
        return Set(nums.split(separator: " ").map({ Int($0)! })).count
    }
}
```


---