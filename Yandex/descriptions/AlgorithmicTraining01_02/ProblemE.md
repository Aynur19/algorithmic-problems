[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_02_orig]: https://contest.yandex.ru/contest/27472
[Yandex_AT_01_02_E]: https://contest.yandex.ru/contest/27472/problems/E/

# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 2][Yandex_AT_01_02_orig]
## [E. Чемпионат по метанию коровьих лепешек][Yandex_AT_01_02_E]

|||
|--------------------|----------------------------------|
|Ограничение времени |1 секунда                         |
|Ограничение памяти  |64 Mb                             |
|Ввод                |стандартный ввод или input.txt    |
|Вывод               |стандартный вывод или output.txt  |
|||


Ежегодный турнир ***"Веселый коровяк"*** — по метанию коровьих лепешек на дальность — *прошел 8–9 июля в селе Крылово Осинского района Пермского края*.

Участники соревнований кидают ***«снаряд»*** — спрессованный навоз, выбирая его из заранее заготовленной кучи. Желающих поупражняться в силе броска традиционно очень много — как мужчин, так и женщин. Каждую лепешку, которую метнули участники ***«Веселого коровяка»***, внимательно осматривали женщины в костюмах коров и тщательно замеряли расстояние.

Соревнования по метанию коровьих лепешек проводятся в Пермском крае с 2009 года.

К сожалению, после чемпионата потерялись записи с фамилиями участников, остались только записи о длине броска в том порядке, в котором их совершали участники.

Трактиорист ***Василий*** помнит три факта:
1. Число метров, на которое он метнул лепешку, оканчивалось на 5
2. Один из победителей чемпионата метал лепешку до Василия
3. Участник, метавший лепешку сразу после Василия, метнул ее на меньшее количество метров

Будем считать, что участник соревнования занял ${k}$-е место, если ровно ${(k − 1)}$ участников чемпионата метнули лепешку строго дальше, чем он.

Какое максимально высокое место мог занять Василий?


---
### Формат ввода
Первая строка входного файла содержит целое число ${n}$ — количество участников чемпионата по метанию лепешек ${(3 ≤ n ≤ 10^5)}$.

Вторая строка входного файла содержит n положительных целых чисел, каждое из которых не превышает 1000, — дальность броска участников чемпионата, приведенные в том порядке, в котором происходило метание.


### Формат вывода
Выведите самое высокое место, которое мог занять тракторист Василий. Если не существует ни одного участника чемпионата, который удовлетворяет, описанным выше условиям, выведите число 0.


---
### Примеры
|           |Пример 1           |Пример 2   |Пример 3   |
|-----------|-------------------|-----------|-----------|
|Ввод ${n}$ |7                  |6          |3          |
|Ввод       |10 20 15 10 30 5 1 |15 15 10   |10 15 20   |
|Вывод      |6                  |1          |0          |


---
### Решение (Swift)
[AlgorithmicTraining_01_02]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_02.swift
[AlgorithmicTraining_01_02_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_02_Tests.swift

1. [AlgorithmicTraining_01_02.swift][AlgorithmicTraining_01_02]
2. [AlgorithmicTraining_01_02_Tests.swift][AlgorithmicTraining_01_02_Tests]

```swift
import Foundation

let n = Int(readLine()!)!
let line = readLine()!

let solution = AlgorithmicTraining_01_02()
let result = solution.problem_E(n, line)

print("\(result)")

class AlgorithmicTraining_01_02 {
    func problem_E(_ n: Int, _ line: String) -> Int {
        var distances = line.split(separator: " ").map({ Int($0)! })
        var winner = distances[0]
        var result = 0
        var tmp = 0
        
        for i in 1..<distances.count - 1 {
            tmp = distances[i]
            if tmp > winner {
                winner = tmp
                result = 0
            }
            else if tmp % 10 == 5 && tmp > result && tmp > distances[i + 1] {
                result = tmp
            }
        }
        
        if winner < distances[n - 1] || result == 0 { return 0 } 
        else {
            distances.sort(by: >)
            for i in 0..<distances.count - 1
            where distances[i] == result { return i + 1 }
        }
        
        return 0
    }
}
```


---