[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_D]: https://contest.yandex.ru/contest/27393/problems/D/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [D. Уравнение с корнем][Yandex_AT_01_D]


|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||


Решите в целых числах уравнение: ${\sqrt{ax+b}=c}$,

${a, b, c}$ – данные целые числа: найдите все решения или сообщите, что решений в целых числах нет.


---
### Формат ввода
Вводятся три числа ${a, b}$ и ${c}$ по одному в строке.


### Формат вывода
Программа должна вывести все решения уравнения в порядке возрастания, либо **NO SOLUTION** (заглавными буквами), если решений нет. Если решений бесконечно много, вывести **MANY SOLUTIONS**.


---
### Примеры
|           |Пример 1 |Пример 2 |Пример 3        |
|-----------|---------|---------|----------------|
|Ввод ${a}$ |1        |1        |1               |
|Ввод ${b}$ |0        |2        |-2              |
|Ввод ${c}$ |0        |3        |3               |
|Вывод      |0        |7        |**NO SOLUTION** |


---
### Решение (Swift)
[AlgorithmicTraining_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01.swift

[AlgorithmicTraining_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_Tests.swift

1. [AlgorithmicTraining_01.swift][AlgorithmicTraining_01]
2. [AlgorithmicTraining_01_Tests.swift][AlgorithmicTraining_01_Tests]

```swift
class AlgorithmicTraining_01 {
    func problem_D(_ lines: [String]) -> [String] {
        let args = (a: Int(lines[0])!, b: Int(lines[1])!, c: Int(lines[2])!)
        guard args.c >= 0 else { return ["NO SOLUTION"] }
        
        if args.a == 0 {
            if args.b < 0 || args.b != args.c * args.c { return ["NO SOLUTION"] }
            else { return ["MANY SOLUTIONS"] }
        }
        
        let x = (args.c * args.c - args.b) / args.a
        var check = args.a * x + args.b == args.c * args.c
        
        if check {
            if args.a * (-x) + args.b >= 0 {
                check = Int(sqrt(Double(args.a * (-x) + args.b))) == args.c
                
                if check && x != -x {
                    return x < -x ? ["\(x)", "\(-x)"] : ["\(-x)", "\(x)"]
                }
            }
        } else { return ["NO SOLUTION"] }
        
        return ["\(x)"]
    }
}

var lines: [String] = []
for i in 0..<3 {
    lines.append(readline()!)
}

var solutions = AlgorithmicTraining_01()
var result = solutions.problem_D(lines)

for i in 0..<result.count {
    print(result[i])
}
```


---