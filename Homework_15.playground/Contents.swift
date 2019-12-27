import Foundation

let arrString: [String] = ["Bbb", "Fff", "Aaa"]

let arrNumber: [Int] = [23, 11, 89]
//1
arrNumber.sorted(by: >)
let arrSt = arrNumber.map {"\($0)"}
arrSt

//2
let bigStr = arrString.reduce("") {res, age in "\(res)\(age)" }
bigStr


//3
func inner(){
    print("ready")
}
func timing(){
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {inner()})
   // inner()
}
timing()

//4

func pr1(){
    print("pr1")
}
func pr2(){
    print("pr2")
}
func second(){
    pr1()
    pr2()
}

func first(){
    return second()
}

first()
