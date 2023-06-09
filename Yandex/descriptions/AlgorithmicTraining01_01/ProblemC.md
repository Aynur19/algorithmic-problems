[⬅️ MAIN][main]<br>[⬅️ Yandex][Yandex]  

[main]: ./../../../README.md
[Yandex]: ./../../README.md
[Yandex_AT_01_orig]: https://contest.yandex.ru/contest/27393
[Yandex_AT_01_C]: https://contest.yandex.ru/contest/27393/problems/C/


# [Яндекс. Тренировки по алгоритмам июнь 2021, занятие 1][Yandex_AT_01_orig]
## [C. Телефонные номера][Yandex_AT_01_C]

|||
|--------------------|---------------------------------|
|Ограничение времени |1 секунда                        |
|Ограничение памяти  |64 Mb                            |
|Ввод                |стандартный ввод или input.txt   |
|Вывод               |стандартный вывод или output.txt |
|||


Телефонные номера в адресной книге мобильного телефона имеют один из следующих форматов: ***+7<код><номер>***, ***8<код><номер>***, ***<номер>***, где ***<номер>*** — это семь цифр, а ***<код>*** — это три цифры или три цифры в круглых скобках. Если код не указан, то считается, что он равен ***495***. Кроме того, в записи телефонного номера может стоять знак ***“-”*** между любыми двумя цифрами (см. пример). На данный момент в адресной книге телефона Васи записано всего три телефонных номера, и он хочет записать туда еще один. Но он не может понять, не записан ли уже такой номер в телефонной книге. Помогите ему! Два телефонных номера совпадают, если у них равны коды и равны номера. Например, ***+7(916)0123456*** и ***89160123456*** — это один и тот же номер.


---
### Формат ввода
В первой строке входных данных записан номер телефона, который Вася хочет добавить в адресную книгу своего телефона. В следующих трех строках записаны три номера телефонов, которые уже находятся в адресной книге телефона Васи. Гарантируется, что каждая из записей соответствует одному из трех приведенных в условии форматов.


### Формат вывода
Для каждого телефонного номера в адресной книге выведите ***YES*** (заглавными буквами), если он совпадает с тем телефонным номером, который Вася хочет добавить в адресную книгу или ***NO*** (заглавными буквами) в противном случае.


---
### Примеры
Пример 1
|Ввод               |Вывод |
|-------------------|------|
|8(495)430-23-97    |      |
|+7-4-9-5-43-023-97 |YES   |
|4-3-0-2-3-9-7      |YES   |
|8-495-430          |NO    |

Пример 2
|Ввод        |Вывод |
|------------|------|
|86406361642 |      |
|83341994118 |YES   |
|86406361642 |YES   |
|83341994118 |NO    |

Пример 3
|Ввод         |Вывод |
|-------------|------|
|+78047952807 |      |
|+78047952807 |YES   |
|+76147514928 |YES   |
|88047952807  |NO    |


---
### Решение (Swift)
[AlgorithmicTraining_01_01]: ./../../YandexTasks.Swift/YandexTasks/Sources/YandexTasks/AlgorithmicTraining_01_01.swift

[AlgorithmicTraining_01_01_Tests]: ./../../YandexTasks.Swift/YandexTasks/Tests/YandexTasksTests/AlgorithmicTraining_01_01_Tests.swift

1. [AlgorithmicTraining_01_01.swift][AlgorithmicTraining_01_01]
2. [AlgorithmicTraining_01_01_Tests.swift][AlgorithmicTraining_01_01_Tests]

```swift
class AlgorithmicTraining_01 {
    func problem_C(_ lines: [String]) -> [String] {
        var phone: String = ""
        var result: [String] = []
        let droped: [String.Element] = ["-", "(", ")"]
        var tmp: String = ""
        
        for i in 0..<lines.count {
            tmp = lines[i]
            tmp.removeAll(where: {
                droped.contains(_: $0)
            })
            
            if tmp.hasPrefix("+7") {
                tmp = "8\(String(tmp.dropFirst(2)))"
            } else if tmp.count < 11 {
                tmp = "8495\(tmp)"
            }
            
            if i > 0 {
                phone == tmp ? result.append("YES") : result.append("NO")
            } else {
                phone = tmp
            }
        }
        
        return result
    }
}

var lines: [String] = []
for i in 0..<4 {
    lines.append(readline()!)
}

var solutions = AlgorithmicTraining_01()
var result = solutions.problem_C(lines)

for i in 0..<result.count {
    print(result[i])
}
```


---