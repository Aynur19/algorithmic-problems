[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_A]: https://contest.yandex.ru/contest/27472/problems/A/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [A. Возрастает ли список?][Yandex_AT_01_02_A]

|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||

Дан список. Определите, является ли он монотонно возрастающим(то есть верно ли, что каждый элемент этого списка больше предыдущего).

Выведите ***YES***, если массив монотонно возрастает и ***NO*** в противном случае.


---
### Примеры
|           |Ввод   |Вывод  |
|-----------|-------|-------|
|Пример 1   |1 7 9  |YES    |
|Пример 2   |1 9 7  |NO     |
|Пример 3   |2 2 2  |NO     |


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift
[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]

```swift
import Foundation

class AlgorithmicTraining_01_02 {
    func problem_A(_ list: [Int]) -> String {
        for i in 0..<list.count - 1 where list[i] >= list[i + 1] {
            return "NO"
        }
        
        return "YES"
    }
}

let solution = AlgorithmicTraining_01_02()
let list = readLine()!.split(separator: " ").map({ Int($0)! })
let result = solution.problem_A(list)

print(result)
```


---