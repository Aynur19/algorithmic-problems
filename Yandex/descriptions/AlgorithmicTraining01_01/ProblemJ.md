[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_J]: https://contest.yandex.ru/contest/27393/problems/J/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [J. Система линейных уравнений - 2][Yandex_AT_01_J]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||

Даны числа ${a, b, c, d, e, f}$. Решите систему линейных уравнений:

${ax+by=e}$,

${cx+dy=f}$


---
### Формат ввода
Вводятся 6 вещественных чисел - коэффициенты уравнений.


### Формат вывода
Вывод программы зависит от вида решения этой системы. 
1. Если система не имеет решений, то программа должна вывести единственное число ${0}$. 
2. Если система имеет бесконечно много решений, каждое из которых имеет вид ${y=kx+b}$, то программа должна вывести число ${1}$, а затем значения ${k}$ и ${b}$. 
3. Если система имеет единственное решение ${(x_0, y_0)}$, то программа должна вывести число ${2}$, а затем значения ${x_0}$ и ${y_0}$. 
4. Если система имеет бесконечно много решений вида ${x=x_0, y}$ — любое, то программа должна вывести число ${3}$, а затем значение ${x_0}$. 
5. Если система имеет бесконечно много решений вида ${y=y_0, x}$ — любое, то программа должна вывести число ${4}$, а затем значение ${y_0}$. 
6. Если любая пара чисел ${(x,y)}$ является решением, то программа должна вывести число ${5}$.

Числа ${x_0}$ и ${y_0}$ будут проверяться с точностью до пяти знаков после точки.

---
### Примеры
|           |Пример 1   |Пример 2   |Пример 3   |
|-----------|-----------|-----------|-----------|
|Ввод ${a}$ |1          |1          |0          |
|Ввод ${b}$ |0          |1          |2          |
|Ввод ${c}$ |0          |2          |0          |
|Ввод ${d}$ |1          |2          |4          |
|Ввод ${e}$ |3          |1          |1          |
|Ввод ${f}$ |3          |2          |2          |
|Вывод      |2 3 3      |1 -1 1     |4 0.5      |


---
### Решение (Swift)
[AlgorithmicTraining_01_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_01.swift
[AlgorithmicTraining_01_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_01_Tests.swift

1. [AlgorithmicTraining_01_01.swift][AlgorithmicTraining_01_01]
2. [AlgorithmicTraining_01_01_Tests.swift][AlgorithmicTraining_01_01_Tests]

```swift
import Foundation

class AlgorithmicTraining_01 {
    func problem_J(_ a: Float, _ b: Float, _ c: Float, _ d: Float, _ e: Float, _ f: Float) -> String {
        
        let determinant = a * d - b * c
        var koef: Float = 0.0
        var a = a, b = b, c = c, d = d, e = e, f = f
        
        if determinant == 0 {
            if a == 0, c == 0 {
                if b == 0, d == 0 {
                    if e == 0, f == 0 { return "5" }
                    
                    return "0"
                }
                if e * d != f * b { return "0" }
                else {
                    if b != 0 { return "4 \(String(format: "%.5f", e / b))" }
                    else { return "4 \(String(format: "%.5f", f / d))" }
                }
            }
            
            if b == 0, d == 0 {
                if e * c != f * a { return "0" }
                else {
                    if a != 0 { return "3 \(String(format: "%.5f", e / a))" }
                    else { return "3 \(String(format: "%.5f", f / c))" }
                }
            }
            
            if a != 0 {
                koef = c / a
                c = 0
                d -= koef * b
                f -= koef * e
                
                if d == 0, f == 0 {
                    return "1 \(String(format: "%.5f", -a / b)) \(String(format: "%.5f", e / b))"
                }
            } else {
                koef = a / c
                a = 0
                b -= koef * d
                e -= koef * f
                
                if b == 0, e == 0 {
                    return "1 \(String(format: "%.5f", -c / d)) \(String(format: "%.5f", f / d))"
                }
            }
            return "0"
            
        } else {
            if d != 0 {
                let x = (e - b * f / d) / (a - b * c / d)
                let y = (f - c * x) / d
                return "2 \(String(format: "%.5f", x)) \(String(format: "%.5f", y))"
            } else {
                let x = (f - d * e / b) / (c - d * a / b)
                let y = (e - a * x) / b
                return "2 \(String(format: "%.5f", x)) \(String(format: "%.5f", y))"
            }
        }
    }
    
}

let a = Float(readLine()!)!
let b = Float(readLine()!)!
let c = Float(readLine()!)!
let d = Float(readLine()!)!
let e = Float(readLine()!)!
let f = Float(readLine()!)!

let solution = AlgorithmicTraining_01()
let result = solution.problem_J(a, b, c, d, e, f)

print("\(result)")
```


---