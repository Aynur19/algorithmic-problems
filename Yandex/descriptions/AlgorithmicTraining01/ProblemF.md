[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_F]: https://contest.yandex.ru/contest/27393/problems/F/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [E. Расстановка ноутбуков][Yandex_AT_01_F]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||

В школе решили на один прямоугольный стол поставить два прямоугольных ноутбука. Ноутбуки нужно поставить так, чтобы их стороны были параллельны сторонам стола. Определите, какие размеры должен иметь стол, чтобы оба ноутбука на него поместились, и площадь стола была минимальна.


---
### Формат ввода
Вводится четыре натуральных числа, первые два задают размеры одного ноутбука, а следующие два — размеры второго. Числа не превышают 1000.


### Формат вывода
Выведите два числа — размеры стола. Если возможно несколько ответов, выведите любой из них (но только один).


---
### Примеры
|         |Ввод      |Вывод                              |
|---------|----------|-----------------------------------|
|Пример 1 |10 2 2 10 |20 2 <br> 2 20 <br> 4 10 <br> 10 4 |
|Пример 2 |5 7 2 3   |9 5 <br> 5 9                       |


### Примечания
В примерах указаны ***всевозможные*** ответы на поставленную задачу. Ваша программа должна вывести один из них.


---
### Решение (Swift)
[AlgorithmicTraining_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01.swift
[AlgorithmicTraining_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_Tests.swift

1. [AlgorithmicTraining_01.swift][AlgorithmicTraining_01]
2. [AlgorithmicTraining_01_Tests.swift][AlgorithmicTraining_01_Tests]

```swift
import Foundation

class AlgorithmicTraining_01 {
    func problem_F(_ line: String) -> [Int] {
        let sizes = line.split(separator: " ").map({ Int($0)! })
        let l1 = (min: min(sizes[0], sizes[1]), max: max(sizes[0], sizes[1]))
        let l2 = (min: min(sizes[2], sizes[3]), max: max(sizes[2], sizes[3]))

        var result = (a: Int.max, b: Int.max, area: Int.max)
        result.a = max(l1.max, l2.max)
        result.b = l1.max + l2.max - result.a
        
        if result.b <= max(l1.min, l2.min) {
            result.a += min(min(l1.min, l2.min), result.b)
            result.b = max(l1.min, l2.min)
        } else {
            result.b = l1.min + l2.min
        }
        
        return [result.a, result.b]
    }
}

var line = readLine()!

let solution = AlgorithmicTraining_01()
let result = solution.problem_F(line)

print("\(result[0]) \(result[1])")
```


---