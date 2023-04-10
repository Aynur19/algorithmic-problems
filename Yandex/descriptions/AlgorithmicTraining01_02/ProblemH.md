[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_H]: https://contest.yandex.ru/contest/27472/problems/H/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [H. Наибольшее произведение трех чисел][Yandex_AT_01_02_H]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||


В данном списке из ${n ≤ 10^5}$ целых чисел найдите три числа,произведение которых максимально.

Решение должно иметь сложность ${O(n)}$, где ${n}$ - размер списка.

Выведите три искомых числа в любом порядке.


---
### Примеры
|           |Ввод                   |Вывод          |
|-----------|-----------------------|---------------|
|Пример 1   |3 5 1 7 9 0 9 -3 10    |10 9 9         |
||||
|Пример 2   |-5 -30000 -12          |-5 -12 -30000  |
||||
|Пример 3   |1 2 3                  |1 2 3          |
|||


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift
[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]

```swift
import Foundation

let nums = readLine()!.split(separator: " ").map({ Int($0)! })

let solution = AlgorithmicTraining_01_02()
let result = solution.problem_H(nums)
let resultStr = result.map({ String($0) }).joined(separator: " ")

print(resultStr)

class AlgorithmicTraining_01_02 {
    func problem_H(_ nums: [Int]) -> [Int] {
        guard nums.count > 3 else { return nums }
        var maxMin: [Int] = []

        if nums.count > 5 {
            maxMin = nums[0..<6].sorted(by: >)
            
            for i in 6..<nums.count {
                if nums[i] >= maxMin[0] {
                    maxMin[3] = maxMin[2]
                    maxMin[2] = maxMin[1]
                    maxMin[1] = maxMin[0]
                    maxMin[0] = nums[i]
                } else if nums[i] >= maxMin[1] {
                    maxMin[3] = maxMin[2]
                    maxMin[2] = maxMin[1]
                    maxMin[1] = nums[i]
                } else if nums[i] >= maxMin[2] {
                    maxMin[3] = maxMin[2]
                    maxMin[2] = nums[i]
                } else if nums[i] > maxMin[3] {
                    maxMin[3] = nums[i]
                }
                
                if nums[i] <= maxMin[5] {
                    maxMin[4] = maxMin[5]
                    maxMin[5] = nums[i]
                } else if nums[i] < maxMin[4] {
                    maxMin[4] = nums[i]
                }
            }
        } else {
            maxMin = nums.sorted(by: >)
        }
        
        var max = maxMin[0] * maxMin[1] * maxMin[2]
        var result = [maxMin[0], maxMin[1], maxMin[2]]
        maxMin.append(maxMin[0])
        var tmp = 0
        
        for i in 1..<maxMin.count - 2 {
            tmp = maxMin[i] * maxMin[i + 1] * maxMin[i + 2]
            if max < tmp {
                max = tmp
                result = [maxMin[i], maxMin[i + 1], maxMin[i + 2]]
            }
        }
        
        return result
    }
}
```


---