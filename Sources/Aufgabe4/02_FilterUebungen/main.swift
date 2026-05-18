//
//  main.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// Aufgabe 1

let numberList = [1, 2, 3, 4, 5]

func getEvenNumbers(list: [Int]) -> [Int] {
  let filteredList = list.filter { $0 % 2 == 0 }
  return filteredList
}

print(getEvenNumbers(list: numberList))

let nameList = ["Alice", "Bob", "Charlie", "Diana"]

func getLongStrings(list: [String]) -> [String] {
  let filteredList = list.filter { $0.count > 4 }
  return filteredList
}

print(getLongStrings(list: nameList))
