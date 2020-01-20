import Foundation

//+1 Напишите своими словами что такое pure function
//pure function - всегда возвращает один и тот же результат при одинаковых входных параметрах, которавя не влияет на данные извне

let arrString: [String] = ["Bbb", "Fff", "Aaa"]
let arrNumber: [Int] = [23, 11, 89]

//+2 отсортируйте массив чисел по возрастанпию используя функцию sorted
arrNumber.sorted(by: >)
arrNumber

//+3 переведите массив в чисел в массив строк с помощью функции map
let arrSt = arrNumber.map {"\($0)"}
arrSt

//+4 переведите массив строк с именами людей в одну строку? содержащую все эти имена? с помощью функции reduce
let bigStr = arrString.reduce("") {res, age in "\(res)\(age)" }
bigStr

//+5 Напишите функцию которая принимает в себя функцию с типом (Void) -> Void которая будет вызвана с задержкой в 2 секунды
func inner(){
    print("ready")
}
func timing2(test: () -> Void){
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {inner()})
}
timing2(test: {})



//+6 напишите функцию которая принимает в себя две функции и возвращает функцию кторая при вызове выполните первые две функции

func second(a: Int, b: Int, pr1: (Int, Int) -> Int, pr2: (Int, Int) -> Int) -> Int {
    
    return pr1(a, b) + pr2(a, b)

}
let result = second(a:3,b:2,pr1: {(a: Int, b: Int) -> Int in
    return a + b
    
},pr2: {(a: Int, b: Int) -> Int in
    return a - b
    
})
print(result)


//7 напишите функцию которая сортирует массив по переданному алгоритму: принимает в себя массив чисел и функцию которая берет на вход два числа и возвращает Bool(должно ли первое число идти после второго) и возвращает массив отсортированный по этому алгоритму
var arr: [Int] = [34,2,8,5]

var arrSorted = arr.sorted(by: {(s1: Int, s2: Int) -> Bool in
    return s1 > s2
})

print(arrSorted)

//+8 напишите своими словами что такое infix suffix prefix операторы
//пользовательские операторы котороые можно описать как нужно и потом использовать
