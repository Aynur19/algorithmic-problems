[⬅️ MAIN][main]

[⬅️ Yandex][Yandex]  

# Яндекс. Тренировки по алгоритмам 2.0, занятие 2 (A)

## E. Газон

|||
| --- | --- |
| Ограничение времени |	1 секунда|
| Ограничение памяти | 64 Mb|
| Ввод |стандартный ввод или input.txt|
| Вывод |стандартный вывод или output.txt|

Фермер Иван с юности следит за своим газоном. Газон можно считать плоскостью, на которой в каждой точке с целыми координатами растет один пучок травы.

В одно из воскресений Иван воспользовался газонокосилкой и постриг некоторый прямоугольный участок газона. Стороны этого участка параллельны осям координат, а две противоположные вершины расположены в точках ${(x_1, y_1)}$ и ${(x_2, y_2)}$. Следует отметить, что пучки травы, находящиеся на границе этого прямоугольника, также были пострижены.

Довольный результатом Иван купил и установил на газоне дождевальную установку. Она была размещена в точке с координатами ${(x_3, y_3)}$ и имела радиус действия струи ${r}$. Таким образом, установка начала поливать все пучки, расстояние от которых до точки ${(x_3, y_3)}$ не превышало ${r}$.

Все было хорошо, но Ивана заинтересовал следующий вопрос: сколько пучков травы оказалось и пострижено, и полито в это воскресенье?

Требуется написать программу, которая позволит дать ответ на вопрос Ивана.


### Формат ввода
В первой строке входного файла содержатся четыре целых числа ${x_1, y_1, x_2, y_2 (−100 000 ≤ x_1 < x_2 ≤ 100 000; −100 000 ≤ y_1 < y_2 ≤ 100 000)}$.

Во второй строке входного файла содержатся три целых числа ${x_3, y_3, r (−100 000 ≤ x_3, y_3 ≤ 100 000; 1 ≤ r ≤ 100 000)}$.


### Формат вывода
В выходной файл необходимо вывести одно целое число — число пучков травы, которые были и пострижены, и политы.


### Примеры

|       |Пример 1 |
|-------|---------|
|Ввод 1 |0 0 5 4  |
|Ввод 2 |4 0 3    |
|Вывод  |14       |


### Примечания
Иллюстрация к примеру:

![][example]


### Решение (Swift)

1. [AlgorithmicTraining_02A.swift][AlgorithmicTraining_02A]
2. [AlgorithmicTraining_02A_Tests.swift][AlgorithmicTraining_02A_Tests]

```swift
import Foundation

class AlgorithmicTraining_02A {
    func problem_E(_ line1: String, _ line2: String) -> Int {
        let args1 = line1.split(separator: " ").map({ Int($0)! })
        let args2 = line2.split(separator: " ").map({ Int($0)! })

        var mower = (l: args1[0], b: args1[1], r: args1[2], t: args1[3])
        let sprinkler = (x: args2[0], y: args2[1], r: args2[2])

        mower.l = min(mower.l, mower.r)
        mower.r = max(mower.l, mower.r)
        mower.b = min(mower.b, mower.t)
        mower.t = max(mower.b, mower.t)

        let startY = max(mower.b, sprinkler.y - sprinkler.r)
        let endY = min(mower.t, sprinkler.y + sprinkler.r)
        let r2 = Double(sprinkler.r * sprinkler.r)

        var area = 0
        var deltaX: Double
        var minX = 0, maxX = 0
        var leftX = 0, rightX = 0


        for y in startY...endY {
            deltaX = sqrt(r2 - Double((y - sprinkler.y) * (y - sprinkler.y)))
            rightX = Int(floor(Double(sprinkler.x) + deltaX))
            leftX = Int(ceil(Double(sprinkler.x) - deltaX))

            maxX = min(mower.r, rightX)
            minX = max(mower.l, leftX)

            if maxX >= minX {
                area += maxX - minX + 1
            }
        }

        return area
    }
}

var line1 = readLine()!
var line2 = readLine()!

var solutions = AlgorithmicTraining_02A()
var result = solutions.problem_E(line1, line2)

print(result)
```

---
[main]: ./../../../README.md
[Yandex]: ./../../README.md

[AlgorithmicTraining_02A]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_02A.swift

[AlgorithmicTraining_02A_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_02A_Tests.swift

[example]: ./ExampleProblemE.gif