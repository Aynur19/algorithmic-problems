[⬅️ MAIN][main]

[⬅️ Yandex][Yandex]  

# Яндекс. Тренировки по алгоритмам 2.0, занятие 2 (A)

## A. Забавный конфуз

|||
| --- | --- |
| Ограничение времени |	1 секунда|
| Ограничение памяти |64Mb|
| Ввод |стандартный ввод или input.txt|
| Вывод |стандартный вывод или output.txt|

Пусть ${A}$ — массив, состоящий из ${N}$ элементов ${A_1, …, A_N}$. Обозначим его максимальное и минимальное значение через ${max(A)}$ и ${min(A)}$ соответственно. Вычислим сумму элементов ${S}$, ${S = A_1 + A_2 + … + A_N}$. Заменим каждый элемент массива на разницу ${S}$ и этого элемента:

${A_i:=S-A_i, 1 \leq i \leq N}$

Такое преобразование массива ${A}$ назовем операцией *Confuse*. Напишите программу, которая по массиву ${B}$, полученному в результате ${K}$-кратного применения операции *Confus*e* к некоторому массиву ${A}$, вычислит разность ${max(A) - min(A)}$.

### Формат ввода
Первая строка входного файла содержит целые числа ${N}$ и ${K}$, где ${N}$ — количество элементов массива ${B (2 \leq N \leq 10000)}$, а ${K}$ — количество применений операции Confuse к начальному массиву ${A, 1 \leq K \leq 100}$. Вторая строка файла содержит ${N}$ элементов массива ${B}$. Элементы массива ${B}$ — целые числа, принадлежащие диапазону от *-2 000 000 000* до *2 000 000 000*.

### Формат вывода
Единственная строка выходного файла должна содержать целое число - разность ${max(A)}$ и ${min(A)}$.

### Пример
| Ввод | Вывод |
|---|---|
|4 2 ||
|45 52 47 46|| 
||7|

### Решение (Swift)

1. [AlgorithmicTraining_02A.swift][AlgorithmicTraining_02A]
2. [AlgorithmicTraining_02A_Tests.swift][AlgorithmicTraining_02A_Tests]

```swift
class AlgorithmicTraining_02A {
    func problem_A(_ line1: String, _ line2: String) -> Int {
        let ln1 = line1.split(separator: " ")
        let ln2 = line2.split(separator: " ")

        let count = Int(ln1[0])!
        var min = Int.max
        var max = Int.min
        var tmp: Int
        
        for i in 0..<count {
            tmp = Int(ln2[i])!
            if min > tmp {
                min = tmp
            }
        
            if max < tmp {
                max = tmp
            }
        }

        return max - min
    }
}

var line1 = readLine()!
var line2 = readLine()!

var solutions = AlgorithmicTraining_02A()
var result = solutions.problem_A(line1, line2)

print(result)
```

---
[main]: ./../../../README.md
[Yandex]: ./../../README.md

[AlgorithmicTraining_02A]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_02A.swift

[AlgorithmicTraining_02A_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_02A_Tests.swift