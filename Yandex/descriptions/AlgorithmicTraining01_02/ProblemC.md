[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_C]: https://contest.yandex.ru/contest/27472/problems/C/


# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [C. Ближайшее число][Yandex_AT_01_02_C]

|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||


Напишите программу, которая находит в массиве элемент, самый близкий по величине к  данному числу.


---
### Формат ввода
В первой строке задается одно натуральное число ${N}$, не превосходящее ${1000}$ – размер массива. Во второй строке содержатся ${N}$ чисел – элементы массива (целые числа, не превосходящие по модулю ${1000}$). В третьей строке вводится одно целое число ${x}$, не превосходящее по модулю ${1000}$.


### Формат вывода
Вывести значение элемента массива, ближайшее к ${x}$. Если таких чисел несколько, выведите любое из них.


---
### Примеры
|                       |Пример 1   |Пример 2   |
|-----------------------|-----------|-----------|
|Ввод ${N}$             |5          |5          |
|Ввод последовательности|1 2 3 4 5  |5 4 3 2 1  |
|Ввод ${x}$             |6          |3          |
|Вывод                  |5          |3          |


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift

[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]

```swift
import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map({ Int($0)! })
let target = Int(readLine()!)!

var dif = Int.max, idx = 0

for i in 0..<nums.count where dif > abs(target - nums[i]) && dif > 0 {
    dif = abs(target - nums[i])
    idx = i
}

print("\(nums[idx])")
```


---