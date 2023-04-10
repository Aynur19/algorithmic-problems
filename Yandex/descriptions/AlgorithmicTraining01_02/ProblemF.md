[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_F]: https://contest.yandex.ru/contest/27472/problems/F/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [F. Симметричная последовательность][Yandex_AT_01_02_F]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||

Последовательность чисел назовем симметричной, если она одинаково читается как слева направо, так и справа налево. Например, следующие последовательности являются симметричными:

${1 \space 2 \space  3 \space 4 \space 5 \space 4 \space 3 \space 2 \space 1}$

${1 \space 2 \space 1 \space 2 \space 2 \space 1 \space 2 \space 1}$

Вашей программе будет дана последовательность чисел. Требуется определить, какое минимальное количество и каких чисел надо приписать в конец этой последовательности, чтобы она стала симметричной.


---
### Формат ввода
Сначала вводится число ${N}$ — количество элементов исходной последовательности ${(1 ≤ N ≤ 100)}$. Далее идут ${N}$ чисел — элементы этой последовательности, натуральные числа от 1 до 9.


### Формат вывода
Выведите сначала число ${M}$ — минимальное количество элементов, которое надо дописать к последовательности, а потом ${M}$ чисел (каждое — от 1 до 9) — числа, которые надо дописать к последовательности.


---
### Примеры

|           |Ввод               |Вывод  |
|-----------|-------------------|-------|
|Пример 1   |9                  |0      |
|           |1 2 3 4 5 4 3 2 1  |       |
||||
|Пример 2   |5                  |3      |
|           |1 2 1 2 2          |1 2 1  |
||||
|Пример 3   |5                  |4      |   
|           |1 2 3 4 5          |4 3 2 1|
|||


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

let solution = AlgorithmicTraining_01_02()
let result = solution.problem_F(n, nums)
let resultStr = result.map({ String($0) }).joined(separator: " ")

print("\(result.count)")
print(resultStr)


class AlgorithmicTraining_01_02 {
    func problem_F(_ n: Int, _ nums: [Int]) -> [Int] {
        var l = 0, r = nums.count - 1
        var idx = 0
        
        while l < r {
            if nums[l] != nums[r] {
                idx = l
                
                if r != nums.count - 1 {
                    l -= 1
                    r = nums.count - 1
                }
            } else {
                r -= 1
            }
            l += 1
        }
        
        if idx == 0 { return [] }
        else { return nums[0...idx].reversed() }
    }
}
```


---