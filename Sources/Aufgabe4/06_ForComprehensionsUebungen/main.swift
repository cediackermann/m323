//
//  main.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// Aufgabe 1

for number in 1...10 {
  print(number * number)
}

// Aufgabe 2

let evenNumbers: [Int] = {
  var numbers: [Int] = []
  for number in 1...20 {
    if number % 2 == 0 {
      numbers.append(number)
    }
  }
  return numbers
}()

print(evenNumbers)
