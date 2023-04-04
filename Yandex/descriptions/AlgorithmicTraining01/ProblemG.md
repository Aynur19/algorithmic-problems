[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_G]: https://contest.yandex.ru/contest/27393/problems/G/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [G. Детали][Yandex_AT_01_G]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||

Имеется ${N}$ кг металлического сплава. Из него изготавливают заготовки массой ${K}$ кг каждая. После этого из каждой заготовки вытачиваются детали массой ${M}$ кг каждая (из каждой заготовки вытачивают максимально возможное количество деталей). Если от заготовок после этого что-то остается, то этот материал возвращают к началу производственного цикла и сплавляют с тем, что осталось при изготовлении заготовок. Если того сплава, который получился, достаточно для изготовления хотя бы одной заготовки, то из него снова изготавливают заготовки, из них – детали и т.д. Напишите программу, которая вычислит, какое количество деталей может быть получено по этой технологии из имеющихся исходно ${N}$ кг сплава.


---
### Формат ввода
Вводятся ${N, K, M}$. Все числа натуральные и не превосходят 200.


### Формат вывода
Выведите одно число — количество деталей, которое может получиться по такой технологии.


---
### Примеры
|         |Ввод ${N, K, M}$ |Вывод  |
|---------|-----------------|-------|
|Пример 1 |10 5 2           |4      |
|Пример 2 |13 5 3           |3      |
|Пример 3 |14 5 3           |4      |


---
### Решение (Swift)
[AlgorithmicTraining_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01.swift
[AlgorithmicTraining_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_Tests.swift

1. [AlgorithmicTraining_01.swift][AlgorithmicTraining_01]
2. [AlgorithmicTraining_01_Tests.swift][AlgorithmicTraining_01_Tests]

```swift
import Foundation

class AlgorithmicTraining_01 {
    func problem_G(_ line: String) -> Int {
        let args = line.split(separator: " ").map({ Int($0)! })
        
        guard args[0] >= args[1], args[1] >= args[2] else { return 0 }

        var metal = args[0]
        var count = 0
        var production = (residue: 0, count: 0)
        let tuck = (residue: args[1] % args[2], count: args[1] / args[2])
        
        while metal >= args[1] {
            production.residue = metal % args[1]
            production.count = metal / args[1]
            metal = tuck.residue * production.count + production.residue
            count += production.count * tuck.count
        }
        
        return count
    }
}

var line = readLine()!

let solution = AlgorithmicTraining_01()
let result = solution.problem_G(line)

print("\(result)")


```


---