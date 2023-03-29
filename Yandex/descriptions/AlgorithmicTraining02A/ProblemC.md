[⬅️ MAIN][main]

[⬅️ Yandex][Yandex]  

# Яндекс. Тренировки по алгоритмам 2.0, занятие 2 (A)

## C. Шахматная доска

|||
| --- | --- |
| Ограничение времени |	1 секунда|
| Ограничение памяти |64Mb|
| Ввод |стандартный ввод или input.txt|
| Вывод |стандартный вывод или output.txt|

Из шахматной доски по границам клеток выпилили связную (не распадающуюся на части) фигуру без дыр. Требуется определить ее периметр.


### Формат ввода
Сначала вводится число ${N (1 ≤ N ≤ 64)}$ – количество выпиленных клеток. В следующих N строках вводятся координаты выпиленных клеток, разделенные пробелом (номер строки и столбца – числа от 1 до 8). Каждая выпиленная клетка указывается один раз.


### Формат вывода
Выведите одно число – периметр выпиленной фигуры (сторона клетки равна единице).


### Примеры

|       |Пример 1 |Пример 2 |
|-------|---------|---------|
|Ввод 1 |3        |1        |
|Ввод 2 |1 1      |8 8      |
|Ввод 3 |1 2      |         |
|Ввод 4 |2 1      |         |
|Вывод  |8        |4        |


### Примечания
1. Вырезан уголок из трех клеток. Сумма длин его сторон равна 8.
2. Вырезана одна клетка. Ее периметр равен 4.


### Решение (Swift)

1. [AlgorithmicTraining_02A.swift][AlgorithmicTraining_02A]
2. [AlgorithmicTraining_02A_Tests.swift][AlgorithmicTraining_02A_Tests]

```swift
import Foundation

class AlgorithmicTraining_02A {
    func problem_C(_ n: Int, _ coords: [String]) -> Int {
        var p = n * 4
        
        var dict: [Int:String] = [:]
        var x = 0, y = 0
        
        coords.forEach { xy in
            let xyStr = xy.split(separator: " ")
            x = Int(xyStr[0])!
            y = Int(xyStr[1])!
            
            dict[x * 10 + y] = xy
        }
        
        dict.forEach { (k, v) in
            if dict[k - 10] != nil {
                p -= 2
            }
            
            if dict[k - 1] != nil {
                p -= 2
            }
        }
        
        return p
    }
}

var line1 = readLine()!
let count = Int(line1)!

var line2: [String] = []

for i in 0..<count {
    let coords = readLine()!
    line2.append(coords)
}

var solutions = AlgorithmicTraining_02A()
var result = solutions.problem_C(count, line2)

print(result)
```

---
[main]: ./../../../README.md
[Yandex]: ./../../README.md

[AlgorithmicTraining_02A]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_02A.swift

[AlgorithmicTraining_02A_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_02A_Tests.swift

