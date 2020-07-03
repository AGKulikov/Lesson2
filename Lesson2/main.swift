//
//  main.swift
//  Lesson2
//
//  Created by Feniks on 03.07.2020.
//  Copyright © 2020 Feniks. All rights reserved.
//

import Foundation
// Домашнее задание для второго урока

// 1. Написать функцию, которая определяет, четное число или нет.
func evenOrNotEven (_ number: Int) -> String {
    if number % 2 == 0 {return("Число четное")}
    else {return("Число не четное")}
}
print(evenOrNotEven(9)) //проверка

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func remainderOfDivideByThree (_ number: Int) -> String {
    if number % 3 == 0 {return("Остаток 0")} else  {
        return("Без остатка не делится на 3")
    }
}
print(remainderOfDivideByThree(8)) //проверка

// 3. Создать возрастающий массив из 100 чисел.
var numericArray = [Int]()
for index in 1...100 {
    numericArray.append(index)
}
print(numericArray) //проверка

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
numericArray = numericArray.filter { $0 % 2 != 0 && $0 % 3 == 0}
print(numericArray) //проверка

// 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func numberOfFibonacci (array: [Double]) -> [Double] {
    var arrayModification = array
    if arrayModification.count < 2 { arrayModification.append (1)
    } else {arrayModification.append (arrayModification[arrayModification.endIndex - 2]+arrayModification[arrayModification.endIndex - 1])}
    return arrayModification
}

var arrayFibonacci = [Double]()
while arrayFibonacci.count < 100 {
    arrayFibonacci = numberOfFibonacci(array: arrayFibonacci)
}
print (arrayFibonacci) //проверка
