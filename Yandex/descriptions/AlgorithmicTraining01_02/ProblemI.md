[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_I]: https://contest.yandex.ru/contest/27472/problems/I/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_02_orig]
## [I. Сапер][Yandex_AT_01_02_I]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||


Вам необходимо построить поле для игры ***"Сапер"*** по его конфигурации – размерам и координатам расставленных на нем мин.

Вкратце напомним правила построения поля для игры ***"Сапер"***:
1. Поле состоит из клеток с минами и пустых клеток
2. Клетки с миной обозначаются символом *
3. Пустые клетки содержат число ${k_{i,j}, \space 0≤ k_{i, j} ≤ 8}$ – количество мин на соседних клетках. 

***Соседними клетками являются восемь клеток, имеющих смежный угол или сторону.***


---
### Формат ввода
В первой строке содержатся три числа: 
1. ${N, \space 1 ≤ N ≤ 100}$ - количество строк на поле; 
2. ${M, \space 1 ≤ M ≤ 100}$ - количество столбцов на поле; 
3. ${K, \space 0 ≤ K ≤ N ⋅ M}$ - количество мин на поле.

В следующих ${K}$ строках содержатся по два числа с координатами мин: 
1. ${p, \space 1 ≤ p ≤ N}$ - номер строки мины; 
2. ${q, \space 1 ≤ 1 ≤ M}$ - номер столбца мины.


### Формат вывода
Выведите построенное поле, разделяя строки поля переводом строки, а столбцы - пробелом.


---
### Примеры
|           |Ввод                               |Вывод                                      |
|-----------|-----------------------------------|-------------------------------------------|
|Пример 1   |3 2 2<br>1 1<br>2 2                |* 2<br>2 *<br>1 1                          |
||||
|Пример 2   |2 2 0                              |0 0<br>0 0                                 |
||||
|Пример 3   |4 4 4<br>1 3<br>2 1<br>4 2<br>4 4  |1 2 * 1<br>* 2 1 1<br>2 2 2 1<br>1 * 2 *   |
|||


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift
[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]

```swift
import Foundation

let args1 = readLine()!.split(separator: " ").map({ Int($0)! })
var args2: [Int] = []

for i in 0..<args1[2] {
    args2.append(contentsOf: readLine()!.split(separator: " ").map({ Int($0)! }))
}

let solution = AlgorithmicTraining_01_02()
let result = solution.problem_I(args1, args2)

for i in 0..<result.count {
    print(result[i])
}

class AlgorithmicTraining_01_02 {
    func problem_I(_ args1: [Int], _ args2: [Int]) -> [String] {
        var result: [String] = []
        var y = 0, x = 0, idx = 0
        
        guard !args2.isEmpty else {
            for i in 0..<args1[0] {
                idx = args1[1] * i
                result.append(Array(repeating: "0", count: args1[1]).joined(separator: " "))
            }
            return result
        }
        
        let n = args1[0] + 2, m = args1[1] + 2
        var area: [Int] = Array(repeating: 0, count: n * m)
        var idxList: [Int] = []
        
        for i in stride(from: 0, to: args2.count, by: 2) {
            y = args2[i]
            x = args2[i + 1]
            
            idx = (y * m) + x
            idxList = [idx - m - 1, idx - m, idx - m + 1,
                       idx - 1, idx + 1,
                       idx + m - 1, idx + m, idx + m + 1]
            
            area[idx] = Int.min
            for i in 0..<idxList.count { area[idxList[i]] += 1 }
        }
        
        area.removeFirst(m + 1)
        area.removeLast(m + 1)
        for i in 1..<args1[0] {
            area.remove(at: args1[1] * i)
            area.remove(at: args1[1] * i)
        }
        
        let str = area.map({ item in
            if item >= 0 { return String(item) }
            else { return "*" }
        })
        
        for i in 0..<args1[0] {
            idx = args1[1] * i
            result.append(Array(str[idx..<(idx + args1[1])]).joined(separator: " "))
        }
        
        return result
    }
}
```


---