import Foundation

//
//  main.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// Aufgabe 1

let list: [[Int]] = [[1, 2], [3, 4], [5, 6]]

func getFlatMap(list: [[Int]]) -> [Int] {
  return list.flatMap { $0 }
}

print(getFlatMap(list: list))

// Aufgabe 2

let dictionary: [String: [String]] = [
  "Max": ["Blau", "Grün"],
  "Anna": ["Rot"],
  "Julia": ["Gelb", "Blau", "Grün"],
]

func getDistinctColors(list: [String: [String]]) -> [String] {
  let flattenedColors = list.flatMap { $0.1 }
  return Array(Set(flattenedColors))
}

print(getDistinctColors(list: dictionary))
