//
//  01_MapUebungen.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// Aufgabe 1

let numberList = [1, 2, 3, 4, 5]

func doubleListItems(numbers: [Int]) -> [Int] {
  let doubleList = numbers.map { $0 * 2 }
  return doubleList
}

print(doubleListItems(numbers: numberList))

// Aufgabe 2

let nameList = ["Alice", "Bob", "Charlie"]

func makeUpperCase(list: [String]) -> [String] {
  let upperCaseList = list.map { $0.uppercased() }
  return upperCaseList
}

print(makeUpperCase(list: nameList))

// Aufgabe 3
