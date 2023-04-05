[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_B]: https://contest.yandex.ru/contest/27472/problems/B/


# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [B. Определить вид последовательности][Yandex_AT_01_02_B]


|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||


По последовательности чисел во входных данных определите ее вид:
- ***CONSTANT*** – последовательность состоит из ***одинаковых*** значений
- ***ASCENDING*** – последовательность является ***строго возрастающей***
- ***WEAKLY ASCENDING*** – последовательность является ***нестрого возрастающей***
- ***DESCENDING*** – последовательность является ***строго убывающей***
- ***WEAKLY DESCENDING*** – последовательность является ***нестрого убывающей***
- ***RANDOM*** – последовательность не принадлежит ни к одному из вышеупомянутых типов


---
### Формат ввода
По одному на строке поступают числа последовательности ${a_i, |a_i| ≤ 10^9}$.

Признаком окончания последовательности является число ${-2× 10^9}$. ***Оно в последовательность не входит.***


### Формат вывода
В единственной строке выведите тип последовательности.


---
### Примеры
|       |Пример 1                                                   |
|-------|-----------------------------------------------------------|
|Ввод   |-530<br>-530<br>-530<br>-530<br>-530<br>-530<br>-2000000000|
|Вывод  |CONSTANT                                                   |


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift
[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]


```swift
import Foundation

let end = -2_000_000_000
var current = Int(readLine()!)!

if current == end { print("RANDOM") }

var tmp = Int(readLine()!)!
var result = Set<String>()

while tmp != end {
    if current == tmp {
        result.insert("CONSTANT")
    } else if current > tmp {
        result.insert("DESCENDING")
    } else {
        result.insert("ASCENDING")
    }
    
    current = tmp
    tmp = Int(readLine()!)!
}

if result.isEmpty { print("CONSTANT") }
else if result.count == 1 { print(result.first!) }
else if result.count == 2 {
    if !result.contains("DESCENDING") { print("WEAKLY ASCENDING") }
    else if !result.contains("ASCENDING") { print("WEAKLY DESCENDING") }
    else { print("RANDOM") }
}
else { print("RANDOM") }
```


---