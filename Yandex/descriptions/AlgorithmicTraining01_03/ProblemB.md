[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_03_orig]: https://contest.yandex.ru/contest/27663/
[Yandex_AT_01_03_B]:https://contest.yandex.ru/contest/27663/problems/B/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 3][Yandex_AT_01_03_orig]
## [A. Пересечение множеств][Yandex_AT_01_03_B]

|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||

Даны два списка чисел, которые могут содержать до ${10000}$ чисел каждый. Выведите все числа, которые входят как в первый, так и во второй список в порядке возрастания. Примечание. И даже эту задачу на Питоне можно решить в одну строчку.


---
### Формат ввода
Вводятся два списка целых чисел. Все числа каждого списка находятся на отдельной строке.


### Формат вывода
Выведите ответ на задачу.


---
### Примеры
|           |Ввод                       |Вывод  |
|-----------|---------------------------|-------|
|Пример 1   |1 3 2<br>4 3 2             |2 3    |
||||
|Пример 2   |1 2 6 4 5 7<br>10 2 3 4 8  |2 4    |
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

let nums1 = readLine()!
let nums2 = readLine()!
let result = solution.problem_B(nums1, nums2)

print(result.map({ String($0) }).joined(separator: " "))


class AlgorithmicTraining_01_03 {
    func problem_B(_ nums1: String, _ nums2: String) -> [Int] {
        let set1 = Set(nums1.split(separator: " ").map({ Int($0)! }))
        let set2 = Set(nums2.split(separator: " ").map({ Int($0)! }))
        
        return set1.intersection(set2).sorted()
    }
}
```


---