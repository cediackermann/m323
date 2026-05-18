//
//  main.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// Aufgabe 1

let numberList = [1, 2, 3, 4, 5]

func foldLeft(list: [Int]) -> Int {
  return list.reduce(0, +)
}

print(foldLeft(list: numberList))

// Aufgabe 2

let stringList = ["Hallo", " ", "Welt", "!"]

func foldStringsLeft(list: [String]) -> String {
  return list.reduce("", +)
}

print(foldStringsLeft(list: stringList))
