[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_E]: https://contest.yandex.ru/contest/27393/problems/E/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [E. Скорая помощь][Yandex_AT_01_E]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||


Бригада скорой помощи выехала по вызову в один из отделенных районов. К сожалению, когда диспетчер получил вызов, он успел записать только адрес дома и номер квартиры ${K_1}$, а затем связь прервалась. Однако он вспомнил, что по этому же адресу дома некоторое время назад скорая помощь выезжала в квартиру ${K_2}$, которая расположена в подъезда ${P_2}$ на этаже ${N_2}$. Известно, что в доме ${M}$ этажей и количество квартир на каждой лестничной площадке одинаково. Напишите программу, которая вычилсяет номер подъезда ${P_1}$ и номер этажа ${N_1}$ квартиры ${K_1}$.


---
### Формат ввода
Во входном файле записаны пять положительных целых чисел ${K_1, M, K_2, P_2, N_2}$. Все числа не превосходят ${10^6}$.


### Формат вывода
Выведите два числа ${P_1}$ и ${N_1}$. Если входные данные не позволяют однозначно определить ${P_1}$ или ${N_1}$, вместо соответствующего числа напечатайте 0. Если входные данные противоречивы, напечатайте два числа –1 (минус один).


---
### Примеры
|         |Ввод ${K_1, M, K_2, P_2, N_2}$ |Вывод ${P_1, N_1}$ |
|---------|-------------------------------|-------------------|
|Пример 1 |89 20 41 1 11                  |2 3                |
|Пример 2 |11 1 1 1 1                     |0 1                |
|Пример 3 |3 2 2 2 1                      |-1 -1              |


---
### Решение (Swift)
[AlgorithmicTraining_01_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_01.swift
[AlgorithmicTraining_01_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_01_Tests.swift

1. [AlgorithmicTraining_01_01.swift][AlgorithmicTraining_01_01]
2. [AlgorithmicTraining_01_01_Tests.swift][AlgorithmicTraining_01_01_Tests]

```swift
import Foundation

class AlgorithmicTraining_01 {
    func problem_E(_ line1: String) -> [Int] {
        let args = line1.split(separator: " ")
        let h = (k1: Int(args[0])!,
                 m: Int(args[1])!,
                 k2: Int(args[2])!, p2: Int(args[3])!, n2: Int(args[4])!)
        
        guard h.k1 > 0 && h.m > 0 && h.k2 > 0 && h.p2 > 0 && h.n2 > 0 else { return [-1, -1] }
        guard h.n2 <= h.m && h.n2 <= h.k2 && h.p2 <= h.k2 else { return [-1, -1] }
        if h.k2 == 1 && (h.n2 != 1 || h.p2 != 1)  { return [-1, -1] }
        
        var result = (p1: -1, n1: -1)
        
        let n2 = (h.p2 - 1) * h.m + h.n2
        if n2 > h.k2 { return [-1, -1] }
                
        let apartmetsPerFloor = h.k2 / n2 + (h.k2 % n2 == 0 ? 0 : 1)
        if apartmetsPerFloor * (n2 - 1) > h.k2 { return [-1, -1] }
        
        if n2 == 1 {
            if h.k1 <= h.k2 { return [1, 1] }
            else if h.k1 <= h.m * h.k2 {
                return h.m == 1 ? [1, 1] : [1, 0]
            }
            else {
                return h.m == 1 ? [0, 1] : [0, 0]
                
            }
        }
        
        let apartmetsPerFloor2 = (h.k2 - 1) / (n2 - 1)
        let bounds = (l: min(apartmetsPerFloor, apartmetsPerFloor2),
                      r: max(apartmetsPerFloor, apartmetsPerFloor2))
        
        for apf in bounds.l...bounds.r {
            var n1 = h.k1 / apf + (h.k1 % apf == 0 ? 0 : 1)
            let p1 = n1 / h.m + (n1 % h.m == 0 ? 0 : 1)
            n1 = n1 - (p1 - 1) * h.m
            
            if result.n1 == -1 {
                result.n1 = n1
            } else if result.n1 != n1 {
                result.n1 = 0
            }
            
            if result.p1 == -1 {
                result.p1 = p1
            } else if result.p1 != p1 {
                result.p1 = 0
            }
            
            if result.n1 == 0 && result.p1 == 0 { break }
        }
                
        return [result.p1, result.n1]
    }
    
}

var line1 = readLine()!

let solution = AlgorithmicTraining_01()
let result = solution.problem_E(line1)

print("\(result[0]) \(result[1])")
```


---