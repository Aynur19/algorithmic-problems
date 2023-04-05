[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_D]: https://contest.yandex.ru/contest/27472/problems/D/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [D. Больше своих соседей][Yandex_AT_01_02_D]


|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||


Дан список чисел. Определите, сколько в этом списке элементов, которые больше двух своих соседей и выведите количество таких элементов.


---
### Формат ввода
Вводится список чисел. Все числа списка находятся на одной строке.


### Формат вывода
Выведите ответ на задачу.


---
### Примеры
|           |Ввод       |Вывод  |
|-----------|-----------|-------|
|Пример 1   |1 2 3 4 5  |0      |
|Пример 2   |5 4 3 2 1  |0      |
|Пример 3   |1 5 1 5 1  |2      |


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift

[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]

```swift
import Foundation

let nums = readLine()!.split(separator: " ").map({ Int($0)! })
var count = 0

if nums.count > 2 {
    var i = 1
    while i < nums.count - 1 {
        if nums[i] > nums[i - 1] && nums[i] > nums[i + 1] {
            count += 1
            i += 2
        } else {
            i += 1
        }
    }
}

print("\(count)")
```


---