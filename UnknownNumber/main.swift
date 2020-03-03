//
//  main.swift
//  UnknownNumber
//
//  Created by Павел Борисевич on 2/27/20.
//  Copyright © 2020 Павел Борисевич. All rights reserved.
//

import Foundation

// генерация случайного числа
//let randomNumber = UInt8(arc4random_uniform(50))

print("Компьютер случайным образом загадал число. Вам требуется отгадать его")

// словарь сообщений
let message = [
    "start": "Введите вариант числа и нажмите Enter",
    "more": "Ваш вариант больше загаданного числа",
    "less": "Ваш вариант меньше загадонного числа",
    "win": "Вы угадали число!"]

// храним загаданное число в виде строки, чтобы избежать тройного преоброзования:
// 1) результат функции readLine(_:) из String? в String
// 2) полученный String в UInt8? с помощью UInt8(_:)
// 3) полученный Uint8? в UInt8 для сравнения с randomNumber

let randomNumber = String (arc4random_uniform(50))
// введенное пользователем число
var userNumber: String = ""
// цикл проверки
repeat{
    print(message["start"]!)
    // получение числа
    let myNumber = readLine()
    userNumber = myNumber ?? ""
    if userNumber < randomNumber{
        print(message["less"]!)
    }else if userNumber > randomNumber{
        print(message["more"]!)
    }
} while userNumber != randomNumber
print(message["win"]!)

