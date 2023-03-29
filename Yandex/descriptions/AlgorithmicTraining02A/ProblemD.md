[⬅️ MAIN][main]

[⬅️ Yandex][Yandex]  

# Яндекс. Тренировки по алгоритмам 2.0, занятие 2 (A)

## D. Петя, Маша и верёвочки

|||
| --- | --- |
| Ограничение времени |	1 секунда|
| Ограничение памяти |512 Mb|
| Ввод |стандартный ввод или input.txt|
| Вывод |стандартный вывод или output.txt|

На столе лежали две одинаковые верёвочки целой положительной длины.

Петя разрезал одну из верёвочек на ${N}$ частей, каждая из которых имеет целую положительную длину, так что на столе стало ${N+1}$ верёвочек. Затем в комнату зашла Маша и взяла одну из лежащих на столе верёвочек. По длинам оставшихся на столе ${N}$ верёвочек определите, какую наименьшую длину может иметь верёвочка, взятая Машей.


### Формат ввода
Первая строка входных данных содержит одно целое число N — количество верёвочек, оставшихся на столе ${(2 ≤ N ≤ 1000)}$. Во второй строке содержится ${N}$ целых чисел ${l_i}$ — длины верёвочек ${(1 ≤ l_i ≤ 1000)}$.


### Формат вывода
Выведите одно целое число — наименьшую длину, которую может иметь верёвочка, взятая Машей.


### Примеры

|       |Пример 1 |Пример 2 |
|-------|---------|---------|
|Ввод 1 |4        |4        |
|Ввод 2 |1 5 2 1  |5 12 4 3 |
|Вывод  |1        |24       |


### Решение (Swift)

1. [AlgorithmicTraining_02A.swift][AlgorithmicTraining_02A]
2. [AlgorithmicTraining_02A_Tests.swift][AlgorithmicTraining_02A_Tests]

```swift
import Foundation

class AlgorithmicTraining_02A {
    func problem_D(_ line1: String, _ line2: String) -> Int {
        let count = Int(line1)!
        let lengthsStr = line2.split(separator: " ")
        var lengths: [Int] = []

        for i in 0..<count {
            lengths.append(Int(lengthsStr[i])!)
        }
        
        let max = lengths.max()!
        let sum = lengths.reduce(0, +)
        
        for i in 1...sum where (sum + i) % 2 == 0 {
            if sum - max + i == max {
                return i
            }
        }
        
        return sum
    }
}

var line1 = readLine()!
var line2 = readLine()!

var solutions = AlgorithmicTraining_02A()
var result = solutions.problem_D(line1, line2)

print(result)
```

---
[main]: ./../../../README.md
[Yandex]: ./../../README.md

[AlgorithmicTraining_02A]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_02A.swift

[AlgorithmicTraining_02A_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_02A_Tests.swift

