[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_03_orig]: https://contest.yandex.ru/contest/27663/
[Yandex_AT_01_03_C]:https://contest.yandex.ru/contest/27663/problems/C/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 3][Yandex_AT_01_03_orig]
## [C. Кубики][Yandex_AT_01_03_C]

|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |256 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||

Аня и Боря любят играть в разноцветные кубики, причем у каждого из них свой набор и в каждом наборе все кубики различны по цвету. Однажды дети заинтересовались, сколько существуют цветов таких, что кубики каждого цвета присутствуют в обоих наборах. Для этого они занумеровали все цвета случайными числами. На этом их энтузиазм иссяк, поэтому вам предлагается помочь им в оставшейся части. Номер любого цвета — это целое число в пределах от ${0}$ до ${10^9}$.


---
### Формат ввода
В первой строке входного файла записаны числа ${N}$ и ${M}$ — количество кубиков у Ани и Бори соответственно. В следующих ${N}$ строках заданы номера цветов кубиков Ани. В последних ${M}$ строках номера цветов кубиков Бори.


### Формат вывода
Выведите: 
1. сначала количество, а затем отсортированные по возрастанию номера цветов таких, что кубики каждого цвета есть в обоих наборах,
2. затем количество и отсортированные по возрастанию номера остальных цветов у Ани, 
3. потом количество и отсортированные по возрастанию номера остальных цветов у Бори.


---
### Примеры
Пример 1   
|Ввод   |Вывод  |
|-------|-------|
|4 3    |2      |
|0      |0 1    |
|1      |2      |
|10     |9 10   |
|9      |1      |
|1      |3      |
|3      |       |
|0      |       |

Пример 2   
|Ввод   |Вывод  |
|-------|-------|
|2 2    |1      |
|1      |2      |
|2      |1      |
|2      |1      |
|3      |1      |
|       |3      |

Пример 3   
|Ввод   |Вывод  |
|-------|-------|
|0 0    |0      |
|       |${}$   |
|       |0      |
|       |${}$   |
|       |0      |
|       |${}$   |


---
### Решение (Swift)
[AlgorithmicTraining_01_03]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_03.swift
[AlgorithmicTraining_01_03_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_03_Tests.swift

1. [AlgorithmicTraining_01_03.swift][AlgorithmicTraining_01_03]
2. [AlgorithmicTraining_01_03_Tests.swift][AlgorithmicTraining_01_03_Tests]

```swift
let nm = readLine()!.split(separator: " ").map({ Int($0)! })
var a = Array<Int>(repeating: 0, count: nm[0])
var b = Array<Int>(repeating: 0, count: nm[1])

for i in 0..<a.count {
    a[i] = Int(readLine()!)!
}

for i in 0..<b.count {
    b[i] = Int(readLine()!)!
}

let solution = AlgorithmicTraining_01_03()
let result = solution.problem_C(a, b)

for i in 0..<result.count {
    print(result[i].count)
    print(result[i].map({ String($0)} ).joined(separator: " "))
}


class AlgorithmicTraining_01_03 {
    func problem_C(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var result: [[Int]] = Array(repeating: [], count: 3)

        let set1 = Set(nums1)
        let set2 = Set(nums2)

        result[0] = set1.intersection(set2).sorted()
        result[1] = set1.subtracting(result[0]).sorted()
        result[2] = set2.subtracting(result[0]).sorted()

        let a = result[0].map({ String($0)} ).joined(separator: " ")
        return result
    }
}
```


---